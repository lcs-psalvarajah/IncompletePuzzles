//
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

// Get tine length

print("Enter tine length:")
print("  ", terminator: "")
let tineLength = Int(readLine()!)!


// Get tine spacing
print("Enter tine spacing:")
print("  ", terminator: "")
let spacing = Int(readLine()!)!

// Get handle length
print("Enter handle length:")
print("  ", terminator: "")
let handleLength = Int(readLine()!)!

// OUTPUT

// Produce top of trident according to length given
for _ in 1...tineLength {
    // Print the tines
    for _ in 1...3 {
        
        // Print part of a tine
        print("*", terminator: "")
        
        // Print space between tines
        for _ in 1...spacing {
            print(" ", terminator: "")
        }
        
    }
    // Go to next line of output
    print("")
}

// draw the horizonatal connecting part of the trident

for _ in 1...(3 + spacing + spacing) {
    print("*", terminator: "")
}
print("")

// draw the handle length of the trident

for _ in 1...handleLength {

    for _ in 1...(spacing + 1) {
        print(" ", terminator: "")
    }
    // draw a star
    print("*")
}

