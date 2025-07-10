//
//  LoginReducer.swift
//  TCA-Architecture
//
//  Created by Alkit Gupta on 10/07/25.
//

import Foundation
import ComposableArchitecture


struct CounterFeature: Reducer {
    enum Action: Equatable {
        case increment
        case decrement
    }

    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .increment:
            state.count += 1
            return .none
        case .decrement:
            state.count -= 1
            return .none
        }
    }
}
