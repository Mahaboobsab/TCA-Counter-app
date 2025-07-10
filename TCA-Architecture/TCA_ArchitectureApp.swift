//
//  TCA_ArchitectureApp.swift
//  TCA-Architecture
//
//  Created by Alkit Gupta on 10/07/25.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCA_ArchitectureApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(
                store: Store(initialState: CounterFeature.State()) {
                    CounterFeature()
                }
            )
        }
    }
}
