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
            The number of RSA numbers between 1 and 10 is 3
            """,
                       countOfRSANumbersFrom(lower: 1,
                                             upper: 10))
        
    }

    func testCaseB() {
        
        XCTAssertEqual("""
            The number of RSA numbers between 1 and 1000 is 292
            """,
                       countOfRSANumbersFrom(lower: 1,
                                             upper: 1000))
        
    }

    func testCaseC() {
        
        XCTAssertEqual("""
            The number of RSA numbers between 1000 and 1000 is 0
            """,
                       countOfRSANumbersFrom(lower: 1000,
                                             upper: 1000))
        
    }

}
