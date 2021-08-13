//
//  TestCITests.swift
//  TestCITests
//
//  Created by Mykola Zhurba on 13.08.2021.
//

import XCTest
@testable import TestCI

class CalculatorSpec: XCTestCase {

    var calculator: Calculator!

    override func setUpWithError() throws {
        try super.setUpWithError()

        calculator = .init()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAdd() throws {
        let result = calculator.add(a: 5, b: 5)
        XCTAssertEqual(result, 10)
    }

    func testSubstract() throws {
        let result = calculator.substract(a: 5, b: 5)
        XCTAssertEqual(result, 0)
    }

    func testMultiply() throws {
        let result = calculator.multiply(a: 5, b: 5)
        XCTAssertEqual(result, 25)
    }

    func testDivideWithZeroParameter() throws {
        let result = calculator.divide(a: 5, b: 0)
        XCTAssertNil(result)
    }

    func testDivideWithoutZeroParameter() throws {
        let result = calculator.divide(a: 5, b: 2)
        XCTAssertEqual(result, 2.5)
    }
}
