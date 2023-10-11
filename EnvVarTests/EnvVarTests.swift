//
//  EnvVarTests.swift
//  EnvVarTests
//
//  Created by Krisztián Gödrei on 09/10/2023.
//

import XCTest
@testable import EnvVar

final class EnvVarTests: XCTestCase {
    
    let expectedValue = "test"

    func testExternalEnv() throws {
        let envVarprovider = EnvVarProvider()
        let value = ProcessInfo.processInfo.environment[envVarprovider.externalEnvKey] ?? ""
        XCTAssertEqual(value, expectedValue)
    }
    
    func testEnvVarProviderExternalEnv() {
        let envVarprovider = EnvVarProvider()
        let value = envVarprovider.env(key: envVarprovider.externalEnvKey)
        XCTAssertEqual(value, expectedValue)
    }

}
