//
//  EmotionBar.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//

import SwiftUI

struct EmotionBar: View {
    let label: String
    let percent: Int
    let color: Color

    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .foregroundColor(.black)
                .font(.subheadline)
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 20)

                RoundedRectangle(cornerRadius: 16)
                    .fill(color)
                    .frame(width: CGFloat(percent) * 1.7, height: 20) // adjust multiplier

                HStack {
                    Spacer()
                    Text("\(percent)%")
                        .foregroundColor(.black)
                        .font(.subheadline)
                        .padding(.trailing, 4)
                }
            }
        }
    }
}
