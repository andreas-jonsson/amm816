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


%token TOKEN_WHILE TOKEN_IF TOKEN_ELSE TOKEN_IDENTIFIER TOKEN_NUMBER TOKEN_STRING TOKEN_OPERATOR
%token TOKEN_OPEN_PAR TOKEN_CLOSE_PAR TOKEN_OPEN_CURL TOKEN_CLOSE_CURL

%left TOKEN_OPERATOR

%%

start       : statements                                        { yylex.(*Lexer).parseResult = $1.v; return 0 }
            ;

block       : TOKEN_OPEN_CURL statements TOKEN_CLOSE_CURL       { $$ = $2 }
            ;

statements  : /* nothing */                                     { $$.v = &block{} }
            | statements statement                              { $1.v.(block).push($2.v) }
            ;

statement   : assignment
            | whileStmt
            | condStmt
            | block
            | call                                              { $$ = $1 }
            ;

condStmt    : TOKEN_IF expression block                         { $$.v = &condStmt{$1, $2, nil} }
            | TOKEN_IF expression block TOKEN_ELSE condStmt
            | TOKEN_IF expression block TOKEN_ELSE block        { $$.v = &condStmt{$1, $2. $3} }
            ;

assignment  : TOKEN_IDENTIFIER '=' expression
            ;

expression  : TOKEN_IDENTIFIER                              
            | TOKEN_NUMBER                                  
            | expression TOKEN_OPERATOR expression              { $$ = $1 }
            ;

whileStmt   : TOKEN_WHILE expression block
            ;

exprList    : /* nothing */                                     { $$.v = []Value{} }
            | expression                                        { $$.v = append($$.v.([]Value), $1.v) }
            | exprList ',' expression                           { $$.v = append($$.v.([]Value), $3.v) }
            ;

call        : TOKEN_IDENTIFIER TOKEN_OPEN_PAR exprList TOKEN_CLOSE_PAR   { $$ = $1 }
            ;

%%
