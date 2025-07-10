//
//  ContentView.swift
//  TCA-Architecture
//
//  Created by Alkit Gupta on 10/07/25.
//


import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    let store: StoreOf<CounterFeature>

    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack {
                Text("Count: \(viewStore.count)")
                HStack {
                    Button("-") { viewStore.send(.decrement) }
                    Button("+") { viewStore.send(.increment) }
                }
            }
        }
    }
}

