//
//  shopping_appTests.swift
//  shopping_appTests
//
//  Created by Peter Paul on 27/02/19.
//  Copyright © 2019 Emilda pvt. ltd. All rights reserved.
//

import XCTest

class shopping_appTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testhours(){
        XCTAssert(wage.gethours(forWage: 25, andPrice: 100) == 4)
        XCTAssert(wage.gethours(forWage: 15.50, andPrice: 250.53) == 17)
    }

}
