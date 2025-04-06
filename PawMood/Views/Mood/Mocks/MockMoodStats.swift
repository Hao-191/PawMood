//
//  MockMoodStats.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

struct MockMoodStats {
    static let happy = 75
    static let receptive = 66
}

let mockMoodEntries: [MoodEntry] = [
    MoodEntry(time: "Today, 9:30 AM", breed: "Golden Retriever", percent: 92),
    MoodEntry(time: "Yesterday, 7:15 PM", breed: "Poodle", percent: 88),
    MoodEntry(time: "Yesterday, 12:47 PM", breed: "Shiba Inu", percent: 85)
]
