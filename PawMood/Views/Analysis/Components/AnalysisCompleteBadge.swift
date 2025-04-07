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
            Text("Facial Analysis Complete")
                .font(.headline)
                .foregroundColor(Color(hex: "#005A9C"))
            Spacer()
            ZStack {
                Circle()
                    .fill(Color.white.opacity(0.5))
                    .frame(width: 50, height: 50)
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
