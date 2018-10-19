/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package main

import (
	"log"
	"os"

	"gitlab.com/phix/amm816/software/slug/parser"
)

//var logger = log.New(os.Stderr, "", 0)

func main() {
	/*
		flag.Parse()

		if flag.NArg() < 2 {
			flag.PrintDefaults()
			os.Exit(-1)
		}

		outputFile := flag.Arg(0)
		inputFile := flag.Arg(1)

		logger.Println(outputFile, inputFile)
	*/

	fp, err := os.Open("test.slg")
	if err != nil {
		log.Fatalln(err)
	}
	defer fp.Close()

	lex := parser.NewLexer(fp)
	v, err := parser.Decode(lex)

	log.Println(v)
	if err != nil {
		log.Fatalln(err)
	}

}

/*

int x = <exp>

string y = "Hello World!"


start:

until
	foo(x, y, z)
repeat <exp>

goto start


*/
