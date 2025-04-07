//
//  EmotionAnalysisBars.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//

import SwiftUI

struct EmotionAnalysisBars: View {
    let emotions: [EmotionStat]

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            VStack(spacing: 8) {
                ForEach(emotions.prefix(2), id: \.name) { emotion in
                    EmotionBar(label: emotion.name, percent: emotion.percent, color: emotion.color)
                }
            }
            VStack(spacing: 8) {
                ForEach(emotions.suffix(2), id: \.name) { emotion in
                    EmotionBar(label: emotion.name, percent: emotion.percent, color: emotion.color)
                }
            }
        }
        .padding(10)
        .background(Color.white.opacity(0.4))
        .cornerRadius(12)
        .frame(maxWidth: .infinity)
    }
}
