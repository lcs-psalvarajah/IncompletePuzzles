//
//  main.swift
//  RSA Numbers
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/rsa-numbers.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("RSA Numbers")
print("===========")

// INPUT



//Get lower number
var lower = Int.collectInput(withPrompt: "Enter lower limit of range ",
                                  minimum: 0,
                                  maximum: nil)

// Get upper number
var upper = 0
while true {
    
    //Prompt the user
    print("Enter upper limit of range")
    
    //Collect input
    guard let givenInput = readLine() else {
        continue
    }
    
    //Convert to an integer
    guard let givenInteger = Int(givenInput) else {
        continue
    }
    
    //Check the number is positive (zero or other)
    guard givenIntger > lower else {
        continue
    }
    
    // Assign the given integer to our "lower" variable
    upper = givenInteger
    
    //Stop the loop
    break
}



// PROCESS

// Count the number of divisors in the given Number
func divisorCount(of givenNumber: Int) -> Int {
    
    // 1 is always a divisor
    var divisorCount = 1
    
    // Start looping from 2
    for i in 2...givenNumber {
        
        // What is the remainder?
        let remainder = givenNumber % i
        
        // DEBUG output...
        print("\(givenNumber) \\ \(i) has a remainder of \(remainder)")
        
        // TODO: Add some code here... we need to keep track of how many divisors there are
        if remainder == 0 {
            
        }
        
    }
    
    // Return the count of divisors
    return divisorCount
    
}

// How many divisors does a number have?
print("5 has this many divisors... \(divisorCount(of: 5))")
