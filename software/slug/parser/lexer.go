/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package parser

import (
	"bufio"
	"bytes"
	"errors"
	"fmt"
	"io"
	"regexp"
	"strconv"
	"unicode"
)

var identifierPattern = regexp.MustCompile("[_a-zA-Z][_a-zA-Z0-9]*")

type Value interface{}

type Lexer struct {
	reader      *bufio.Reader
	err         error
	parseResult Value

	line, col int
	char      byte
}

func (lex *Lexer) nextRune() (rune, error) {
	r, _, err := lex.reader.ReadRune()
	if err != nil {
		return r, err
	}

	if r == '\n' {
		lex.line++
		lex.col = 1
	} else {
		lex.col++
	}

	lex.char = 0
	return r, nil
}

func (lex *Lexer) nextChar() (byte, error) {
	c, err := lex.reader.ReadByte()
	if err != nil {
		return c, err
	}

	if c == '\n' {
		lex.line++
		lex.col = 1
	} else {
		lex.col++
	}

	lex.char = c
	return c, nil
}

func (lex *Lexer) consumeSpaces() error {
	for {
		c, err := lex.nextChar()
		if err != nil {
			return err
		}
		if !unicode.IsSpace(rune(c)) {
			return nil
		}
	}
}

func (lex *Lexer) consumeComment() error {
	c, err := lex.nextChar()
	if err != nil {
		return err
	}

	switch c {
	case '/':
		if _, err := lex.reader.ReadString('\n'); err != nil {
			return err
		}
		lex.line++
		lex.col = 1
		return nil
	case '*':
		for {
			r, err := lex.nextRune()
			if err != nil {
				return err
			}
			if r == '*' {
				buf, err := lex.reader.Peek(1)
				if err != nil {
					return err
				}
				if buf[0] == '/' {
					lex.col++
					_, err := lex.reader.ReadByte()
					return err
				}
			}
		}
	default:
		return errors.New("syntax error '/'")
	}
}

func identifierTermination(r rune) bool {
	switch r {
	case '/', '{', '}', '[', ']', '(', ')', ',', ':', '=', '"':
		return true
	default:
		return unicode.IsSpace(r)
	}
}

func validateIdentifier(ident string) error {
	if len(identifierPattern.Find([]byte(ident))) == len(ident) {
		return nil
	}
	return fmt.Errorf("invalid identifier '%s'", ident)
}

func (lex *Lexer) readIdentifier(initial byte) (string, error) {
	var buf bytes.Buffer
	if err := buf.WriteByte(initial); err != nil {
		return "", err
	}

	for {
		r, err := lex.nextRune()
		if err != nil {
			return "", err
		}

		if identifierTermination(r) {
			if err := lex.reader.UnreadRune(); err != nil {
				return "", err
			}
			return buf.String(), nil
		}

		if _, err := buf.WriteRune(r); err != nil {
			return "", nil
		}
	}
}

func (lex *Lexer) readString() (string, error) {
	var buf bytes.Buffer
	for {
		r, err := lex.nextRune()
		if err != nil {
			return "", err
		}

		if r == '\\' {
			if _, err := buf.WriteRune(r); err != nil {
				return "", nil
			}

			r, err := lex.nextRune()
			if err != nil {
				return "", err
			}

			if _, err := buf.WriteRune(r); err != nil {
				return "", nil
			}
		} else if r == '"' {
			return strconv.Unquote(fmt.Sprintf("\"%s\"", buf.String()))
		} else {
			if _, err := buf.WriteRune(r); err != nil {
				return "", nil
			}
		}
	}
}

func (lex Lexer) String() string {
	if lex.err != nil {
		return fmt.Sprintf("%v - %v:%v", lex.err, lex.line, lex.col)
	}
	return fmt.Sprintf("no errors - %v:%v", lex.line, lex.col)
}

func (lex *Lexer) Lex(lval *yySymType) int {
start:
	if err := lex.consumeSpaces(); err != nil {
		lex.err = err
		return 0
	}

	// char, should now be valid
	switch lex.char {
	case '/':
		if err := lex.consumeComment(); err != nil {
			lex.err = err
			return 0
		}
		goto start
	case '(':
		return TOKEN_OPEN_PAR
	case ')':
		return TOKEN_CLOSE_PAR
	case '{':
		return TOKEN_OPEN_CURL
	case '}':
		return TOKEN_CLOSE_CURL
	case '[':
		return TOKEN_OPEN_BRAC
	case ']':
		return TOKEN_CLOSE_BRAC
	case ',':
		return TOKEN_COMMA
	case '=':
		return TOKEN_EQUAL
	case '"':
		s, err := lex.readString()
		if err != nil {
			return 0
		}
		lval.v = s
		return TOKEN_STRING
	}

	ident, err := lex.readIdentifier(lex.char)
	if err != nil {
		lex.err = err
		return 0
	}

	f, err := strconv.ParseFloat(ident, 64)
	if err == nil {
		lval.v = f
		return TOKEN_NUMBER
	}

	if err := validateIdentifier(ident); err != nil {
		lex.err = err
		return 0
	}

	lval.v = ident
	return TOKEN_IDENTIFIER
}

func (lex *Lexer) Reader() *bufio.Reader {
	return lex.reader
}

func (lex *Lexer) Error(s string) {
	if lex.err == nil {
		lex.err = errors.New(s)
	}
}

// NewLexer initializes a new lexer that can be used with Decode.
func NewLexer(reader io.Reader) *Lexer {
	lex := new(Lexer)
	lex.line = 1
	lex.col = 1
	lex.reader = bufio.NewReader(reader)
	return lex
}
