//
//  PositioningGuide.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//

import SwiftUI

struct PositioningGuide: View {
    var body: some View {
        HStack(alignment: .top, spacing: 40) {
            // Left Text Block
            VStack(alignment: .leading, spacing: 8) {
                Text("Positioning Guide")
                    .font(.headline)
                    .fontDesign(.rounded)
                Text("• Center the pet’s face\n• Ensure good lighting\n• Keep camera steady")
                    .font(.footnote)
            }

            // Right Frame
            ZStack {
                // White rectangle with dashed black border
                RoundedRectangle(cornerRadius: 8)
                    .stroke(style: StrokeStyle(lineWidth: 1.5, dash: [4]))
                    .foregroundColor(.black)
                    .background(Color.white)
                    .frame(width: 120, height: 80)
                    .cornerRadius(8)

                // Blue dashed oval
                Ellipse()
                    .stroke(style: StrokeStyle(lineWidth: 1.5, dash: [5]))
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 60)

                // Centered overlay text
                Text("Pet Face")
                    .font(.caption)
                    .foregroundColor(.blue)
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white.opacity(0.3))
        .cornerRadius(16)
        .padding(.horizontal)
    }
}

