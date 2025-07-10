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
        WithViewStore(store, observe: { $0 }) { viewStore in
            VStack(spacing: 20) {
                Text("Count: \(viewStore.count)")
                    .font(.largeTitle)

                if let id = viewStore.lastGeneratedID {
                    Text("Last UUID: \(id.uuidString)")
                        .font(.caption)
                        .foregroundColor(.gray)
                }

                HStack(spacing: 40) {
                    Button("−") { viewStore.send(.decrement) }
                        .font(.largeTitle)

                    Button("+") { viewStore.send(.increment) }
                        .font(.largeTitle)
                }
            }
            .padding()
        }
    }
}
