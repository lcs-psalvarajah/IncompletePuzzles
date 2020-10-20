//
//  main.swift
//  Trident
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/trident.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Trident")
print("=======")

// INPUT
// get tine length
var tineLength = Int.collectInput(withPrompt: "Enter tine length ",
                                  minimum: 1,
                                  maximum: 10)

// Get tine spacing
var tineSpacing = Int.collectInput(withPrompt: "Enter tine spacing ",
                                  minimum: 1,
                                  maximum: 10)

// Get handle length
var handleLength = Int.collectInput(withPrompt: "Enter handle length ",
                                  minimum: 1,
                                  maximum: 10)

// OUTPUT

// Produce top of trident according to length given
for _ in 1...tineLength {
    // Print the tines
    for _ in 1...3 {
        
        // Print part of a tine
        print("*", terminator: "")
        
        // Print space between tines
        for _ in 1...tineSpacing {
            print(" ", terminator: "")
        }
        
    }
    // Go to next line of output
    print("")
}

// draw the horizonatal connecting part of the trident

for _ in 1...(3 + tineSpacing + tineSpacing) {
    print("*", terminator: "")
}
print("")

// draw the handle length of the trident

for _ in 1...handleLength {

    for _ in 1...(tineSpacing + 1) {
        print(" ", terminator: "")
    }
    // draw a star
    print("*")
}

