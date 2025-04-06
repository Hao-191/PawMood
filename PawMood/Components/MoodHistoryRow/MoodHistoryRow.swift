//
//  MoodHistoryRow.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//
import SwiftUI

struct MoodHistoryRow: View {
    let time: String
    let breed: String
    let percent: Int

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(time)
                    .font(.subheadline.bold())
                Text("\(breed) - \(percent) % Receptive")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            Spacer()
            Text("\(percent)%")
                .font(.subheadline.bold())
                .frame(width: 44, height: 44)
                .background(Color(hex: "#BEEFF0"))
                .clipShape(Circle())
        }
        .padding()
        .background(Color.white.opacity(0.25))
        .cornerRadius(12)
    }
}

