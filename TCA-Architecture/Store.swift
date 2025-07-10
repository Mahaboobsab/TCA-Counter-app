//
//  Utility.swift
//  TCA-Architecture
//
//  Created by Alkit Gupta on 10/07/25.
//

import Foundation
import ComposableArchitecture

let store = Store(initialState: CounterFeature.State()) {
    CounterFeature()
}
