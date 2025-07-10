//
//  LoginReducer.swift
//  TCA-Architecture
//
//  Created by Alkit Gupta on 10/07/25.
//

import Foundation
import ComposableArchitecture

struct CounterFeature: Reducer {
    struct State: Equatable {
        var count = 0
        var lastGeneratedID: UUID?
    }

    enum Action: Equatable {
        case increment
        case decrement
    }

    @Dependency(\.uuidGenerator) var uuidGenerator

    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .increment:
            state.count += 1
            state.lastGeneratedID = uuidGenerator.generate()
            return .none

        case .decrement:
            state.count -= 1
            return .none
        }
    }
}
