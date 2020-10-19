//
//  main.swift
//  TheCellSell
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/the-cell-sell.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("The Cell Sell")
print("=============")

// INPUT

        //// Get daytime minutes
        //print("Number of daytime minutes?")
        //let day = Double(readLine()!)!


//Get daytime minutes

// this is to make sure there is no user mistakes that makes the code crash
var day = 0.00
while true {
    
    //Prompt the user
    print("Number of daytime minutes?")
    
    //Collect input
    guard let givenInput = readLine() else{
        continue
    }
    
    //Convert to an integer
    guard let givenInteger = Double(givenInput) else {
        continue
    }
    
    //Check that the value is positive
    guard givenInteger >= 0 else {
        continue
    }
    
    //Assign the given integer to our "day" variable
    day = givenInteger
    
    //Stop loop
    break
}
    

        //// Get evening minutes
        //print("Number of evening minutes?")
        //let evening = Double(readLine()!)!

// get evening minutes

var evening = 0.00
while true {
    
    //Prompt the user
    print("Number of evening minutes?")
    
    //Collect input
    guard let givenInput = readLine() else{
        continue
    }
    
    //Convert to an integer
    guard let givenInteger = Double(givenInput) else {
        continue
    }
    
    //Check that the value is positive
    guard givenInteger >= 0 else {
        continue
    }
    
    //Assign the given integer to our "day" variable
    evening = givenInteger
    
    //Stop loop
    break
}

        //// Get weekend minutes
        //print("Number of weekend minutes?")
        //let weekend = Double(readLine()!)!

// get weekend minutes

var weekend = 0.00
while true {
    
    //Prompt the user
    print("Number of weekend minutes?")
    
    //Collect input
    guard let givenInput = readLine() else{
        continue
    }
    
    //Convert to an integer
    guard let givenInteger = Double(givenInput) else {
        continue
    }
    
    //Check that the value is positive
    guard givenInteger >= 0 else {
        continue
    }
    
    //Assign the given integer to our "day" variable
    weekend = givenInteger
    
    //Stop loop
    break
}

// PROCESS


// Calculate cost for plan A
var a = 0.00

// Add daytime cost
a += (day - 100) * 0.25

// Add evening cost
a += evening * 0.15

// Add weekend cost
a += weekend * 0.20


// Calculate cost for plan B
var b = 0.00

// Add daytime cost
if day >= 250 {
    b += (day - 250) * 0.45
} else {
    b += 0
}

// Add evening cost
b += evening * 0.35

// Add weekend cost
b += weekend * 0.25


// OUTPUT
print("Plan A costs \(a)")
print("Plan B costs \(b)")

if a > b {
    print("Plan B is cheapest.")
} else {
    print("Plan A is cheapest.")
}
