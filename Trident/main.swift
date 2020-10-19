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

// Get tine length
var tineLength = 0
while true {
    
    //Prompt the user
    print("Enter tine length")
    
    //Collect input
    guard let givenInput = readLine() else{
        continue
    }
    
    //Convert to an integer
    guard let givenInteger = Int(givenInput) else {
        continue
    }
    
    //Check that the value is positive
    guard givenInteger > 0 else {
        continue
    }
    
    //Assign the given integer to our "day" variable
    tineLength = givenInteger
    
    //Stop loop
    break
}

// Get tine spacing
var tineSpacing = 0
while true {
    
    //Prompt the user
    print("Enter tine spacing")
    
    //Collect input
    guard let givenInput = readLine() else{
        continue
    }
    
    //Convert to an integer
    guard let givenInteger = Int(givenInput) else {
        continue
    }
    
    //Check that the value is positive
    guard givenInteger > 0 else {
        continue
    }
    
    //Assign the given integer to our "day" variable
    tineSpacing = givenInteger
    
    //Stop loop
    break
}

// Get handle length
var handleLength = 0
while true {
    
    //Prompt the user
    print("Enter handle length")
    
    //Collect input
    guard let givenInput = readLine() else{
        continue
    }
    
    //Convert to an integer
    guard let givenInteger = Int(givenInput) else {
        continue
    }
    
    //Check that the value is positive
    guard givenInteger > 0 else {
        continue
    }
    
    //Assign the given integer to our "day" variable
    handleLength = givenInteger
    
    //Stop loop
    break
}

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

