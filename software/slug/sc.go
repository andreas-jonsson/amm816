/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package main

import (
	"flag"
	"log"
	"os"
)

var logger = log.New(os.Stderr, "", 0)

func main() {
	flag.Parse()

	if flag.NArg() < 2 {
		flag.PrintDefaults()
		os.Exit(-1)
	}

	outputFile := flag.Arg(0)
	inputFile := flag.Arg(1)

	logger.Println(outputFile, inputFile)
}
