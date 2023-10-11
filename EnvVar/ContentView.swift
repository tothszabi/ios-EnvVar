//
//  ContentView.swift
//  EnvVar
//
//  Created by Krisztián Gödrei on 09/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let envVarprovider = EnvVarProvider()
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(envVarprovider.externalEnvText)
                .accessibilityIdentifier("externalEnvText")
            Text(envVarprovider.defaultEnvText)
            Text(envVarprovider.expandedEnvText)
            Text(envVarprovider.configEnvText)
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
