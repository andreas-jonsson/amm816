/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package parser

type block struct {
	variables  map[string]Value
	statements []Value
}

func (blk *block) push(v Value) {
	switch t := v.(type) {
	case *assignment:
		if blk.variables == nil {
			blk.variables = make(map[string]Value)
		}

		blk.variables[t.ident] = t.val
	default:
		blk.statements = append(blk.statements, v)
	}
}

type assignment struct {
	ident string
	val   Value
}

type condStmt struct {
	expr      Value
	ifBlock   Value
	elseblock Value
}

func Decode(lex *Lexer) (Value, error) {
	lex.err = nil
	lex.parseResult = nil
	yyParse(lex)
	return lex.parseResult, lex.err
}
