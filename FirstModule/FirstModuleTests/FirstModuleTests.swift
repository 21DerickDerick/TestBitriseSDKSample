//
//  FirstModuleTests.swift
//  FirstModuleTests
//
//  Created by Derick, Derick | RASIA on 17/6/21.
//

import XCTest
@testable import FirstModule

class FirstModuleTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let firstModule = FirstModuleCore()
        let result = firstModule.addOneToNumber(num: 1)
        XCTAssert(result == 2)
    }

//    func testWillFail() throws {
//        let firstModule = FirstModuleCore()
//        let result = firstModule.addOneToNumber(num: 1)
//        XCTAssert(result == 10)
//    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
