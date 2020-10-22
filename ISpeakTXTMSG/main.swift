//
//  main.swift
//  I Speak TXTMSG
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/i-speak-txtmsg.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("I Speak TXTMSG")
print("==============")

// INPUT

// Ask for a phrase
print("Enter phrase> ", terminator: "")
let phrase = readLine()!

// PROCESS AND OUTPUT
// NOTE: Instead of an "if statement" using a different type of Swift structure to handle all the different possible cases...

switch phrase {
case "TA" :
    print("totally awesome")
case "CU" :
    print("see you")
case ":-)" :
    print("I'm happy")
case ":-(" :
    print("I’m unhappy")
case ";-)" :
    print("wink")
case ":-P" :
    print("stick out my tongue")
case "( ̃. ̃)" :
    print("sleepy")
case "CCC" :
    print("Canadian Cheese Champion")
case "CUZ" :
    print("because")
case "TY" :
    print("thank-you")
case "YW" :
    print("you’re welcome")
case "TTYL" :
    print("talk to you later")

default:
    print(phrase)
}





//if phrase == "TA" {
//    print("totally awesome")
//} else if phrase == "TTYL" {
//    print("talk to you later")
//    exit(0)
//}
