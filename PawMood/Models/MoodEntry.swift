//
//  MoodEntry.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

import SwiftUI
import Foundation

// For MoodView 
struct MoodEntry: Identifiable {
    let id = UUID()
    let time: String
    let breed: String
    let percent: Int
}

// For AnalysisView PetInfoRow
struct PetInfo {
    let breed: String
    let age: String
    let gender: String
}

// For AnalysisView EmotionsBar rendering
struct EmotionStat {
    let name: String
    let percent: Int
    let color: Color
}

// For ChatView ChatBubbles
struct ChatMessage: Identifiable {
    let id = UUID()
    let isUser: Bool
    let message: String
    let timestamp: String
}

