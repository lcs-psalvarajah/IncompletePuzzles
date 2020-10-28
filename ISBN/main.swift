//
//  main.swift
//  ISBN
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/isbn.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("ISBN")
print("====")

// INPUT

// Set the first 10 digits
let first10Digits = "9780921418"

// Set the sum of just the first 10 digits, which are always 9780921418
// TODO: Use puzzle description to determine how much to subtract.
let first10DigitsSum = 120 - 29

// Ask for the 11th digit
print("Digit 11? ", terminator: "")
let digit11 = Int(readLine()!)!

//Ask for the 12th digit
print("Digit 12? ", terminator: "")
let digit12 = Int(readLine()!)!

//Ask for the 13th digit
print("Digit 13? ", terminator: "")
let digit13 = Int(readLine()!)!

// PROCESS & OUTPUT

// Finish calculating the sum including the 11th, 12th, and 13th digits of the ISBN number

var last3DigitsSum = 0

last3DigitsSum += digit11 * 1
last3DigitsSum += digit12 * 3
last3DigitsSum += digit13 * 1


// Print the 1-3 sum for the entire 13-digit ISBN number
var sum = last3DigitsSum + first10DigitsSum

if sum == 120 {
    print("The 1-3-sum is 120")
} else {
    print("""
        The 1-3-sum is \(sum)
        The ISBN number 9780921418\(digit11)\(digit12)\(digit13) is NOT a valid ISBN number.
        """)
}



// Determine whether this entire ISBN number is valid,
// using the special property of an ISBN number (see puzzle description).
// HINT: Review the arithmetic operators tutorial from the Swift Fundamentals.
//       https://www.hackingwithswift.com/sixty/3/1/arithmetic-operators
