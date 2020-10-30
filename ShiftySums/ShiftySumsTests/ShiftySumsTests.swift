//
//  ShiftySumsTests.swift
//  ShiftySumsTests
//
//  Created by Russell Gordon on 2020-10-29.
//

import XCTest

enum FileType: String {
    case input = "in"
    case output = "out"
}

class ShiftySumsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // Load from the provided input or output file
    func loadFileComponents(forTest test: String, of fileType: FileType) -> [String] {
        
        // Get a reference to the unit testing bundle
        // SEE: https://www.swiftbysundell.com/articles/working-with-files-and-folders-in-swift/
        let bundle = Bundle(for: Self.self)
        
        // Get the file path
        guard let filepath = bundle.url(forResource: test, withExtension: fileType.rawValue) else {
            return []
        }
        
        // Load the contents of the file
        guard let contents = try? String(contentsOf: filepath, encoding: String.Encoding.utf8) else {
            return []
        }
        
        // DEBUG: Print the contents of the input file as an array
        // print(contents.components(separatedBy: "\n"))
        
        // Return the contents of the file
        return contents.components(separatedBy: "\n")
        
    }
    
    func testCaseA() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.01", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.01", of: .output)
        
        // Get input values as integers
        let n = Int(input[0]) ?? 0
        let k = Int(input[1]) ?? 0
        
        // Get output value as integers
        let shiftedValue = Int(output[0]) ?? 0
        
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When n is \(n) and k is \(k) the shifted value should be \(shiftedValue)")
        
        // Actually run the test
        XCTAssertEqual(shiftedValue, shift(n: n,
                                           k: k))
    }
    
    func testCaseB() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.02", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.02", of: .output)
        
        // Get input values as integers
        let n = Int(input[0]) ?? 0
        let k = Int(input[1]) ?? 0
        
        // Get output value as integers
        let shiftedValue = Int(output[0]) ?? 0
        
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When n is \(n) and k is \(k) the shifted value should be \(shiftedValue)")
        
        // Actually run the test
        XCTAssertEqual(shiftedValue, shift(n: n,
                                           k: k))
    }
    
    func testCaseC() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.03", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.03", of: .output)
        
        // Get input values as integers
        let n = Int(input[0]) ?? 0
        let k = Int(input[1]) ?? 0
        
        // Get output value as integers
        let shiftedValue = Int(output[0]) ?? 0
        
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When n is \(n) and k is \(k) the shifted value should be \(shiftedValue)")
        
        // Actually run the test
        XCTAssertEqual(shiftedValue, shift(n: n,
                                           k: k))
    }
    
    func testCaseD() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.04", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.04", of: .output)
        
        // Get input values as integers
        let n = Int(input[0]) ?? 0
        let k = Int(input[1]) ?? 0
        
        // Get output value as integers
        let shiftedValue = Int(output[0]) ?? 0
        
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When n is \(n) and k is \(k) the shifted value should be \(shiftedValue)")
        
        // Actually run the test
        XCTAssertEqual(shiftedValue, shift(n: n,
                                           k: k))
    }
    
    func testCaseE() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.05", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.05", of: .output)
        
        // Get input values as integers
        let n = Int(input[0]) ?? 0
        let k = Int(input[1]) ?? 0
        
        // Get output value as integers
        let shiftedValue = Int(output[0]) ?? 0
        
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When n is \(n) and k is \(k) the shifted value should be \(shiftedValue)")
        
        // Actually run the test
        XCTAssertEqual(shiftedValue, shift(n: n,
                                           k: k))
    }
    
    func testCaseF() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.06", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.06", of: .output)
        
        // Get input values as integers
        let n = Int(input[0]) ?? 0
        let k = Int(input[1]) ?? 0
        
        // Get output value as integers
        let shiftedValue = Int(output[0]) ?? 0
        
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When n is \(n) and k is \(k) the shifted value should be \(shiftedValue)")
        
        // Actually run the test
        XCTAssertEqual(shiftedValue, shift(n: n,
                                           k: k))
    }
    
    func testCaseG() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.07", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.07", of: .output)
        
        // Get input values as integers
        let n = Int(input[0]) ?? 0
        let k = Int(input[1]) ?? 0
        
        // Get output value as integers
        let shiftedValue = Int(output[0]) ?? 0
        
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When n is \(n) and k is \(k) the shifted value should be \(shiftedValue)")
        
        // Actually run the test
        XCTAssertEqual(shiftedValue, shift(n: n,
                                           k: k))
    }
    
    func testCaseH() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.08", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.08", of: .output)
        
        // Get input values as integers
        let n = Int(input[0]) ?? 0
        let k = Int(input[1]) ?? 0
        
        // Get output value as integers
        let shiftedValue = Int(output[0]) ?? 0
        
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When n is \(n) and k is \(k) the shifted value should be \(shiftedValue)")
        
        // Actually run the test
        XCTAssertEqual(shiftedValue, shift(n: n,
                                           k: k))
    }
    
    func testCaseI() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.09", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.09", of: .output)
        
        // Get input values as integers
        let n = Int(input[0]) ?? 0
        let k = Int(input[1]) ?? 0
        
        // Get output value as integers
        let shiftedValue = Int(output[0]) ?? 0
        
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When n is \(n) and k is \(k) the shifted value should be \(shiftedValue)")
        
        // Actually run the test
        XCTAssertEqual(shiftedValue, shift(n: n,
                                           k: k))
    }
    
    func testCaseJ() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.10", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.10", of: .output)
        
        // Get input values as integers
        let n = Int(input[0]) ?? 0
        let k = Int(input[1]) ?? 0
        
        // Get output value as integers
        let shiftedValue = Int(output[0]) ?? 0
        
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When n is \(n) and k is \(k) the shifted value should be \(shiftedValue)")
        
        // Actually run the test
        XCTAssertEqual(shiftedValue, shift(n: n,
                                           k: k))
    }
    
    func testCaseK() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.11", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.11", of: .output)
        
        // Get input values as integers
        let n = Int(input[0]) ?? 0
        let k = Int(input[1]) ?? 0
        
        // Get output value as integers
        let shiftedValue = Int(output[0]) ?? 0
        
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When n is \(n) and k is \(k) the shifted value should be \(shiftedValue)")
        
        // Actually run the test
        XCTAssertEqual(shiftedValue, shift(n: n,
                                           k: k))
    }
    
    func testCaseL() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.12", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.12", of: .output)
        
        // Get input values as integers
        let n = Int(input[0]) ?? 0
        let k = Int(input[1]) ?? 0
        
        // Get output value as integers
        let shiftedValue = Int(output[0]) ?? 0
        
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When n is \(n) and k is \(k) the shifted value should be \(shiftedValue)")
        
        // Actually run the test
        XCTAssertEqual(shiftedValue, shift(n: n,
                                           k: k))
    }
    
    func testCaseM() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.13", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.13", of: .output)
        
        // Get input values as integers
        let n = Int(input[0]) ?? 0
        let k = Int(input[1]) ?? 0
        
        // Get output value as integers
        let shiftedValue = Int(output[0]) ?? 0
        
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When n is \(n) and k is \(k) the shifted value should be \(shiftedValue)")
        
        // Actually run the test
        XCTAssertEqual(shiftedValue, shift(n: n,
                                           k: k))
    }
    
    func testCaseN() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.14", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.14", of: .output)
        
        // Get input values as integers
        let n = Int(input[0]) ?? 0
        let k = Int(input[1]) ?? 0
        
        // Get output value as integers
        let shiftedValue = Int(output[0]) ?? 0
        
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When n is \(n) and k is \(k) the shifted value should be \(shiftedValue)")
        
        // Actually run the test
        XCTAssertEqual(shiftedValue, shift(n: n,
                                           k: k))
    }
    
    func testCaseO() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.15", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.15", of: .output)
        
        // Get input values as integers
        let n = Int(input[0]) ?? 0
        let k = Int(input[1]) ?? 0
        
        // Get output value as integers
        let shiftedValue = Int(output[0]) ?? 0
        
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When n is \(n) and k is \(k) the shifted value should be \(shiftedValue)")
        
        // Actually run the test
        XCTAssertEqual(shiftedValue, shift(n: n,
                                           k: k))
    }
    
    
}
