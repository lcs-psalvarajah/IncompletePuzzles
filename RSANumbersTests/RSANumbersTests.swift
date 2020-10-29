//
//  RSANumbersTests.swift
//  RSANumbersTests
//
//  Created by Russell Gordon on 2020-10-29.
//

import XCTest

class RSANumbersTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCaseA() {
        
        XCTAssertEqual("""
            The number of RSA numbers between 5 and 6 is 1
            """,
                       countOfRSANumbersFrom(lower: 5,
                                             upper: 6))
        
    }

    func testCaseB() {
        
        XCTAssertEqual("""
            The number of RSA numbers between 21 and 26 is 3
            """,
                       countOfRSANumbersFrom(lower: 21,
                                             upper: 26))
        
    }

    func testCaseC() {
        
        XCTAssertEqual("""
            The number of RSA numbers between 99 and 999 is 260
            """,
                       countOfRSANumbersFrom(lower: 99,
                                             upper: 999))
        
    }

}
