//
//  EnvVarTests.swift
//  EnvVarTests
//
//  Created by Krisztián Gödrei on 09/10/2023.
//

import XCTest
@testable import EnvVar

final class EnvVarTests: XCTestCase {

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        let yourSecret = ProcessInfo.processInfo.environment["EXTERNAL_ENV"] ?? ""
        XCTAssertEqual(yourSecret, "test")
    }

}
