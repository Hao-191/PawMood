//
//  ViewfinderPlaceholder.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//

import SwiftUI

struct ViewfinderPlaceholder: View {
    var body: some View {
        ZStack {
            // Rounded background
            RoundedRectangle(cornerRadius: 32)
                .fill(Color.white.opacity(0.2)) // Light tone
                .frame(height: 350)

            // Grid + Circle overlay
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = geometry.size.height

                Path { path in
                    // Vertical lines (1/3 width)
                    path.move(to: CGPoint(x: width / 3, y: 0))
                    path.addLine(to: CGPoint(x: width / 3, y: height))

                    path.move(to: CGPoint(x: 2 * width / 3, y: 0))
                    path.addLine(to: CGPoint(x: 2 * width / 3, y: height))

                    // Horizontal lines (1/3 height)
                    path.move(to: CGPoint(x: 0, y: height / 3))
                    path.addLine(to: CGPoint(x: width, y: height / 3))

                    path.move(to: CGPoint(x: 0, y: 2 * height / 3))
                    path.addLine(to: CGPoint(x: width, y: 2 * height / 3))
                }
                .stroke(style: StrokeStyle(lineWidth: 1, dash: [4]))
                .foregroundColor(.blue.opacity(0.5))

                // Dashed circle in the center
                Circle()
                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [8]))
                    .foregroundColor(.blue)
                    .frame(width: min(width, height) / 2)
                    .position(x: width / 2, y: height / 2)
            }
            .padding(16)
        }
        .padding(.horizontal)
    }
}

