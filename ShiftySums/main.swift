//
//  main.swift
//  Shifty Sums
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/shifty-sums.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Shifty Sums")
print("===========")

// INPUT

// Get the number to be shifted
let n = Int(readLine()!)!

// How many times should we shift?
//    let k = 3

let k = Int(readLine()!)!

// PROCESS

    // Shift the given number "k" number of times
var output = 0  // (12)
    //output += n * 10   (120)       (132)
    //output += n * 10 * 10    (1200)       (1332)
    //output += n * 10 * 10 * 10     (12000)       (13332)

//    var t: Int = 10
//    var power: Int = k
//
//
// for _ in 0...k {
//
//        output += n * Int(pow(Double(t), Double(power)))
//
//
//}

//infix operator **
//func **(lhs: Double, rhs: Double) -> Double {
//    return pow(lhs, rhs)
//}


let numberLoops = 0...k

for i in numberLoops {
    output += n
    
    for j in 1...k {
        
        
    }
    
}


// OUTPUT
print(output)
