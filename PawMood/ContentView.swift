//
//  ContentView.swift
//  PawMood
//
//  Created by WPH on 2025/4/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("PawMood")
            Text("Firebase should be working if you see no errors in console")
                            .font(.subheadline)
                            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
