//
//  EnvVarUITests.swift
//  EnvVarUITests
//
//  Created by Krisztián Gödrei on 11/10/2023.
//

import XCTest

final class EnvVarUITests: XCTestCase {

    func testContentViewExternalEnvText() throws {
        let app = XCUIApplication()
        app.launch()
        
        let textField = app.staticTexts["externalEnvText"].firstMatch
        XCTAssert(textField.waitForExistence(timeout: 0.5))
        XCTAssert(textField.label == "EXTERNAL_ENV: test", textField.label)

    }
}
