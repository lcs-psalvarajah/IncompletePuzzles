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

let lower = Int.collectInput(withPrompt: "Enter lower limit of range", minimum: 0, maximum: 1000)

//Get upper limit range

let upper = Int.collectInput(withPrompt: "Enter upper limit of range", minimum: lower, maximum: 1000)


// PROCESS
func divisorCount(of givenNumber: Int) -> Int {

    // 1 is always a divisor, so is the given number
    var divisorCount = 2

    // Start looping from 2
    for i in 2...givenNumber / 2 {

        // What is the remainder?
        let remainder = givenNumber % i

        // DEBUG output...
//        print("\(givenNumber) \\ \(i) has a remainder of \(remainder)")

        // TODO: Add some code here... we need to keep track of how many divisors there are
        if remainder == 0 {
            divisorCount += 1
        }

    }

    // Return the count of divisors
    return divisorCount

}


func countOfRSANumbers(lower: Int, upper: Int) -> String {
    // Count the number of divisors in the given Number


    var countOfRSANumbers = 0

    for i in lower...upper {

        // How many divisors does a number have?
        let numberOfDivisors = divisorCount(of: i)
//        print("\(i) has \(numberOfDivisors) divisors")
        
        //look for RSA numbers
        if numberOfDivisors == 4 {
            countOfRSANumbers += 1
            
        }
    }
    
    //Build the result to be returned
    
    var result = ""
    
    result += "The number of RSA numbers between \(lower) and \(upper) is \(countOfRSANumbers)"
    
    return result
}

let output = countOfRSANumbers(lower: lower, upper: upper)

print(output)




