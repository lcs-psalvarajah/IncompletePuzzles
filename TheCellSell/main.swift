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

//Get daytime minutes
var day = Double(Int.collectInput(withPrompt: "Number of daytime minutes? ",
                           minimum: 0,
                           maximum: nil))
    
// get evening minutes
var evening = Double(Int.collectInput(withPrompt: "Number of evening minutes? ",
                           minimum: 0,
                           maximum: nil))


// get weekend minutes
var weekend = Double(Int.collectInput(withPrompt: "Number of weekend minutes? ",
                                  minimum: 0,
                           maximum: nil))

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
