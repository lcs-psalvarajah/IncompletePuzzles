//
//  main.swift
//  Speeding Is Not Fine
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/speeding-is-not-fine.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Speeding Is Not Fine")
print("====================")

// INPUT

// Ask for the speed limit
print("What is the speed limit, in km/h? ", terminator: "")
let limit = Int(readLine()!)!

// Ask for speed of the car
print("What is the recorded speed of the car, in km/h? ", terminator: "")
let speed = Int(readLine()!)!

// PROCESS AND OUTPUT

let difference = speed - limit

// See whether the driver is within the speed limit, and if they are not, see how much they are above the limit.

switch difference {
case 1...20:
    print("You are speeding and your fine is $100")
case 21...30:
    print("You are speeding and your fine is $270")
case 31...:
    print("You are speeding and your fine is $500")
default:
    print("Congratulations, you are within the speed limit!")
}







