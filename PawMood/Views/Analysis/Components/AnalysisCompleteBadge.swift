//
//  AnalysisCompleteBadge.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//

import SwiftUI

struct AnalysisCompleteBadge: View {
    var analysisPercent: Double

    var body: some View {
        HStack {
            Text("Receptive Percentage")
                .font(.headline)
                .foregroundColor(Color(hex: "#005A9C"))
            Spacer()
            ZStack {
                // Background circle
                Circle()
                    .stroke(Color.white.opacity(0.4), lineWidth: 10)
                    .frame(width: 50, height: 50)

                // Foreground circle for progress
                Circle()
                    .trim(from: 0, to: CGFloat(analysisPercent / 100))
                    .stroke(Color(hex: "#49B6C3"), style: StrokeStyle(lineWidth: 10, lineCap: .round))
                    .rotationEffect(.degrees(-90)) // start from top
                    .frame(width: 50, height: 50)

                // Percentage text
                Text("\(String(format: "%.1f", analysisPercent))%")
                    .font(.caption)
                    .bold()
                    .foregroundColor(Color(hex: "#005A9C"))
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 5)
        .background(Color.white.opacity(0.4))
        .cornerRadius(16)
    }
}
