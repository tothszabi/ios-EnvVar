//
//  ContentView.swift
//  EnvVar
//
//  Created by Krisztián Gödrei on 09/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(externalEnvText)
            Text(defaultEnvText)
            Text(expandedEnvText)
            Text(configEnvText)
        }
        .padding()
    }
    
    private var externalEnvText: String {
        let key  = "EXTERNAL_ENV"
        return envText(key: key)
    }
    
    private var defaultEnvText: String {
        let key  = "DEFAULT_ENV"
        return envText(key: key)
    }
    
    private var expandedEnvText: String {
        let key  = "EXPANDED_ENV"
        return envText(key: key)
    }
    
    private var configEnvText: String {
        let key  = "CONFIG_ENV"
        return envText(key: key)
    }
    
    private func envText(key: String) -> String {
        var value = ProcessInfo.processInfo.environment[key] ?? ""
        if value == "" {
            value = "<not set>"
        }
        return key + ": " + value
    }
    
}

#Preview {
    ContentView()
}
