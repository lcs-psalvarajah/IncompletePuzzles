//
//  ISpeakTXTMSGTests.swift
//  ISpeakTXTMSGTests
//
//  Created by Russell Gordon on 2020-10-29.
//

import XCTest

enum FileType: String {
    case input = "in"
    case output = "out"
}

class ISpeakTXTMSGTests: XCTestCase {
    
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
        let shortForm = input[0]
        let longForm = output[0]
                
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When shortform is:\t\t\t\(shortForm)\nThe longform should be:\t\t\(longForm)\n")
        
        // Actually run the test
        XCTAssertEqual(longForm, translate(phrase: shortForm))
    }

    func testCaseB() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.01", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.01", of: .output)
        
        // Get input values as integers
        let shortForm = input[1]
        let longForm = output[1]
                
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When shortform is:\t\t\t\(shortForm)\nThe longform should be:\t\t\(longForm)\n")
        
        // Actually run the test
        XCTAssertEqual(longForm, translate(phrase: shortForm))
    }

    func testCaseC() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.01", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.01", of: .output)
        
        // Get input values as integers
        let shortForm = input[2]
        let longForm = output[2]
                
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When shortform is:\t\t\t\(shortForm)\nThe longform should be:\t\t\(longForm)\n")
        
        // Actually run the test
        XCTAssertEqual(longForm, translate(phrase: shortForm))
    }

    func testCaseD() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.01", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.01", of: .output)
        
        // Get input values as integers
        let shortForm = input[3]
        let longForm = output[3]
                
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When shortform is:\t\t\t\(shortForm)\nThe longform should be:\t\t\(longForm)\n")
        
        // Actually run the test
        XCTAssertEqual(longForm, translate(phrase: shortForm))
    }

    func testCaseE() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.01", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.01", of: .output)
        
        // Get input values as integers
        let shortForm = input[4]
        let longForm = output[4]
                
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When shortform is:\t\t\t\(shortForm)\nThe longform should be:\t\t\(longForm)\n")
        
        // Actually run the test
        XCTAssertEqual(longForm, translate(phrase: shortForm))
    }

    func testCaseF() {
        
        // Get input value(s) as strings
        let input = loadFileComponents(forTest: "j2.01", of: .input)
        
        // Get output value(s) as strings
        let output = loadFileComponents(forTest: "j2.01", of: .output)
        
        // Get input values as integers
        let shortForm = input[5]
        let longForm = output[5]
                
        // Print the test case details
        print("Test Case")
        print("=========")
        print("When shortform is:\t\t\t\(shortForm)\nThe longform should be:\t\t\(longForm)\n")
        
        // Actually run the test
        XCTAssertEqual(longForm, translate(phrase: shortForm))
    }

}
