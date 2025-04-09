//
//  MoodEntry.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

import SwiftUI
import Foundation
import CoreLocation

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

// For ProfileView Footprint list
struct Footprint: Identifiable {
    let id = UUID()
    let location: String
    let detail: String
    let icons: [String]
}

// For MoodTrendView points
struct CuddleData: Identifiable, Equatable {
    let id = UUID()
    let dateLabel: String // e.g. "3.1", "3.8", etc.
    let count: Int
}


// For HistoryView GMap Locations
struct CuddleLocation: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    let title: String
    let snippet: String
}



