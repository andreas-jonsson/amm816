/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package parser

func Decode(lex *Lexer) (Value, error) {
	lex.err = nil
	lex.parseResult = nil
	yyParse(lex)
	return lex.parseResult, lex.err
}
