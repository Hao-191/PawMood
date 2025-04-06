//
//  MoodEntry.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

import Foundation

struct MoodEntry: Identifiable {
    let id = UUID()
    let time: String
    let breed: String
    let percent: Int
}
