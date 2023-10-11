//
//  EnvVarProvider.swift
//  EnvVar
//
//  Created by Krisztián Gödrei on 11/10/2023.
//

import Foundation


struct EnvVarProvider {
    let externalEnvKey = "EXTERNAL_ENV"
    
    var externalEnvText: String {
        let key  = "EXTERNAL_ENV"
        return envText(key: key)
    }
    
    var defaultEnvText: String {
        let key  = "DEFAULT_ENV"
        return envText(key: key)
    }
    
    var expandedEnvText: String {
        let key  = "EXPANDED_ENV"
        return envText(key: key)
    }
    
    var configEnvText: String {
        let key  = "CONFIG_ENV"
        return envText(key: key)
    }
    
    func env(key: String) -> String {
        return ProcessInfo.processInfo.environment[key] ?? ""
    }
    
    func envText(key: String) -> String {
        var value = ProcessInfo.processInfo.environment[key] ?? ""
        if value == "" {
            value = "<not set>"
        }
        return key + ": " + value
    }
}
