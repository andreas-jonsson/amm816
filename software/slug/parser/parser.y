%{/*
    This Source Code Form is subject to the terms of the Mozilla Public
    License, v. 2.0. If a copy of the MPL was not distributed with this
    file, You can obtain one at http://mozilla.org/MPL/2.0/.
*/

package parser

%}

%union{
	v Value
}


%token TOKEN_WHILE TOKEN_IF TOKEN_ELSE TOKEN_IDENTIFIER TOKEN_NUMBER TOKEN_STRING TOKEN_OPERATOR TOKEN_COMMA TOKEN_EQUAL
%token TOKEN_OPEN_PAR TOKEN_CLOSE_PAR TOKEN_OPEN_CURL TOKEN_CLOSE_CURL TOKEN_OPEN_BRAC TOKEN_CLOSE_BRAC

%left TOKEN_OPERATOR

%%

start       : statements                                        { yylex.(*Lexer).parseResult = $1.v; return 0 }
            ;

block       : TOKEN_OPEN_CURL statements TOKEN_CLOSE_CURL       { $$.v = $2 }
            ;

statements  : /* nothing */                                     { $$.v = &block{} }
            | statements statement                              { $1.v.(*block).push($2.v) }
            ;

statement   : assignment                                        { $$.v = $1.v }
            | whileStmt                                         { $$.v = $1.v }
            | condStmt                                          { $$.v = $1.v }
            | block                                             { $$.v = $1.v }
            ;

condStmt    : TOKEN_IF expression block                         { $$.v = &condStmt{$1.v, $2.v, nil} }
            | TOKEN_IF expression block TOKEN_ELSE condStmt     { $$.v = &condStmt{$1.v, $2.v, $3.v} }
            | TOKEN_IF expression block TOKEN_ELSE block        
            ;

assignment  : TOKEN_IDENTIFIER TOKEN_EQUAL expression           { $$.v = &assignment{$1.v.(string), $3.v} }
            | TOKEN_IDENTIFIER TOKEN_EQUAL array                { $$.v = &assignment{$1.v.(string), $3.v} }
            ;

expression  : TOKEN_IDENTIFIER                                  { $$.v = $1.v }
            | TOKEN_NUMBER                                      { $$.v = $1.v }
            | expression TOKEN_OPERATOR expression              { $$.v = $1.v }
            ;

whileStmt   : TOKEN_WHILE expression block
            ;

array 		: TOKEN_STRING                                      { $$.v = $1.v }
            | TOKEN_OPEN_BRAC exprList TOKEN_CLOSE_BRAC         { $$.v = $2.v }
			;

exprList    : expression                                        { $$.v = []Value{$1.v} }
            | exprList TOKEN_COMMA expression                   { $$.v = append($1.v.([]Value), $3.v) }
            ;

%%
