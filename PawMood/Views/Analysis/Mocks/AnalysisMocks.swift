//
//  AnalysisMocks.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//

// MockAnalysisStats.swift
// PawMood

import SwiftUI

let mockPetInfo = PetInfo(
    breed: "Golden Retriever",
    age: "2–4 Yr",
    gender: "Female"
)

let mockEmotionStats: [EmotionStat] = [
    EmotionStat(name: "Happiness", percent: 82, color: .yellow),
    EmotionStat(name: "Anxiety", percent: 11, color: .red),
    EmotionStat(name: "Alertness", percent: 21, color: .blue),
    EmotionStat(name: "Energy Level", percent: 60, color: .green)
]
