//
//  TridentTests.swift
//  TridentTests
//
//  Created by Russell Gordon on 2020-10-29.
//

import XCTest

class TridentTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCaseA() {
        
        XCTAssertEqual("""
            *   *   *
            *   *   *
            *********
                *
                *
                *
                *
            """,
                       drawTrident(tineLength: 2,
                                   tineSpacing: 3,
                                   handleLength: 4))
        
    }

    func testCaseB() {
        
        XCTAssertEqual("""
            *   *   *
            *   *   *
            *   *   *
            *   *   *
            *********
                *
                *
            """,
                       drawTrident(tineLength: 4,
                                   tineSpacing: 3,
                                   handleLength: 2))
        
    }

    func testCaseC() {
        
        XCTAssertEqual("""
            *     *     *
            *************
                  *
            """,
                       drawTrident(tineLength: 1,
                                   tineSpacing: 5,
                                   handleLength: 1))
        
    }

    func testCaseD() {
        
        XCTAssertEqual("""
            *          *          *
            *          *          *
            *          *          *
            *          *          *
            *          *          *
            *          *          *
            *          *          *
            *          *          *
            *          *          *
            *          *          *
            ***********************
                       *
                       *
                       *
                       *
                       *
                       *
                       *
                       *
                       *
                       *
            """,
                       drawTrident(tineLength: 10,
                                   tineSpacing: 10,
                                   handleLength: 10))
        
    }

    func testCaseE() {
        
        XCTAssertEqual("""
            ***
            """,
                       drawTrident(tineLength: 0,
                                   tineSpacing: 0,
                                   handleLength: 0))
    }

}
