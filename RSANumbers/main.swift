//
//  main.swift
//  RSA Numbers
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/rsa-numbers.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.
//
//  Test your solution to the puzzle using this plan:
//
//  https://www.russellgordon.ca/incomplete-puzzles/test-plan-rsa-numbers.pdf
//

import Foundation

print("RSA Numbers")
print("===========")

// INPUT
// Get lower limit of range
print("Enter lower limit of range")
let lower = Int(readLine()!)!

// Get upper limit of range
print("Enter upper limit of range")
let upper = Int(readLine()!)!

// PROCESS
// Count the number of divisors in the given Number
func divisorCount(of givenNumber: Int) -> Int {

    // 1 is always a divisor, so is the given number
    var divisorCount = 2

    // Start looping from 2
    for i in 2...givenNumber / 2 {

        // What is the remainder?
        let remainder = givenNumber % i

        // DEBUG output...
        print("\(givenNumber) \\ \(i) has a remainder of \(remainder)")

        // TODO: Add some code here... we need to keep track of how many divisors there are
        if remainder == 0 {
            divisorCount += 1
        }

    }

    // Return the count of divisors
    return divisorCount

}

// How many divisors does a number have?
let numberOfDivisors = divisorCount(of: 10)
print("10 has \(numberOfDivisors) divisors")

for i in lower...upper {
    print(i)
}


