//
//  FaceAnalysisCard.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//

import SwiftUI

struct FaceAnalysisCard: View {
    var body: some View {
        ZStack {
            // Background frame with shadow
            RoundedRectangle(cornerRadius: 18)
                .fill(GlobalColors.background) // use your background color
                .shadow(color: .gray, radius: 8)

            // Image with overlay
            ZStack {
                Image("sample_dog")
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 18))

                // Annotations
                Group {
                    Circle()
                        .stroke(Color.blue, lineWidth: 2)
                        .frame(width: 30, height: 30)
                        .position(x: 125, y: 60) // Left ear

                    Circle()
                        .stroke(Color.blue, lineWidth: 2)
                        .frame(width: 30, height: 30)
                        .position(x: 180, y: 60) // Right ear

                    Circle()
                        .stroke(Color.pink, lineWidth: 2)
                        .frame(width: 30, height: 30)
                        .position(x: 155, y: 79) // Tongue

                    Text("Ear-L")
                        .font(.caption2)
                        .bold()
                        .foregroundColor(.blue)
                        .position(x: 105, y: 40)

                    Text("Ear-R")
                        .font(.caption2)
                        .bold()
                        .foregroundColor(.blue)
                        .position(x: 200, y: 40)

                    Text("Tongue Visible")
                        .font(.caption2)
                        .bold()
                        .foregroundColor(.pink)
                        .position(x: 215, y: 85)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 18))
            .padding(4)
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
}

