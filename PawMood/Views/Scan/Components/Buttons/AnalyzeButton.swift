//
//  AnalyzeButton.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//

import SwiftUI

struct AnalyzeButton: View {
    var onAnalyze: () -> Void

    var body: some View {
        Button(action: onAnalyze) {
            Text("Analyze")
                .font(.headline)
                .frame(width: 150)
                .padding()
                .background(Color(hex: "#F9D77E"))
                .clipShape(Capsule())
                .shadow(radius: 3)
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
}
