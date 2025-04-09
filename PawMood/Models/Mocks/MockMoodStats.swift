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
    MoodEntry(time: "Today, 8:15 AM", breed: "Beagle", percent: 85),
    MoodEntry(time: "Yesterday, 7:10 PM", breed: "Poodle", percent: 88),
    MoodEntry(time: "Yesterday, 3:45 PM", breed: "Labrador", percent: 78),
    MoodEntry(time: "Monday, 11:00 AM", breed: "Shiba Inu", percent: 81),
    MoodEntry(time: "Sunday, 4:20 PM", breed: "Husky", percent: 74),
    MoodEntry(time: "Saturday, 1:05 PM", breed: "Border Collie", percent: 90)
]
