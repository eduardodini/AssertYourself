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
}
