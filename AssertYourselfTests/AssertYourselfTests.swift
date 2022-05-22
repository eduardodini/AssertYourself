//
//  AssertYourselfTests.swift
//  AssertYourselfTests
//
//  Created by Eduardo Dini on 22/05/22.
//

import XCTest
@testable import AssertYourself

class AssertYourselfTests: XCTestCase {

    func test_fail() {
        XCTFail("We have a problem")
    }

    func test_fail_withInterpolatedMessage() {
        let theAnswer = 42
        XCTFail("The answer to the great question is \(theAnswer)")
    }

//    func test_avoidConditionalCode() {
//        let success = false
//        if !success {
//            XCTFail()
//        }
//    }

    func test_assertTrue() {
        let success = false
        XCTAssertTrue(success)
    }

    func test_assertNil() {
        let optionalValue: Int? = 123
        XCTAssertNil(optionalValue)
    }

    struct StructWithDescription: CustomStringConvertible {
        let x: Int
        let y: Int

        var description: String {
            "(\(x), \(y))"
        }
    }

    func test_assertNil_withSelfDescribingType() {
        let optionValue: StructWithDescription? = StructWithDescription(x: 1, y: 2)
        XCTAssertNil(optionValue)
    }

    func test_assertEqual() {
        let actual = "actual"
        XCTAssertEqual(actual, "expected")
    }

    func test_assertEqual_withOptional() {
        let result: String? = "foo"
        XCTAssertEqual(result, "foo")
    }

    func test_floatingPointDanger() {
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3)
    }

    func test_floatingPointFixed() {
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3, accuracy: 0.01)
    }
}
