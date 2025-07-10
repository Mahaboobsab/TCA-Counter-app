//
//  Dependency.swift
//  TCA-Architecture
//
//  Created by Alkit Gupta on 10/07/25.
//

// In the latest version of TCA (v1.0 and above), the concept of an explicit Environment type is optional and often replaced by dependencies injected via the @Dependency property wrapper.


import Foundation
import ComposableArchitecture

struct UUIDGenerator {
    var generate: () -> UUID
}

extension DependencyValues {
    var uuidGenerator: UUIDGenerator {
        get { self[UUIDGeneratorKey.self] }
        set { self[UUIDGeneratorKey.self] = newValue }
    }

    private enum UUIDGeneratorKey: DependencyKey {
        static let liveValue = UUIDGenerator {
            UUID()
        }
    }
}
