//
//  PawMoodApp.swift
//  PawMood
//
//  Created by WPH on 2025/4/3.
//

import SwiftUI
import FirebaseCore

@main
struct PawMoodApp: App {
    // Initialize Firebase as soon as the app launches
        init() {
            // Skip Firebase config in preview mode
                    if !PreviewHelper.isPreview { // take preview helper to avoid firebase bug
                        FirebaseApp.configure()
                        print("Firebase configured")
                    } else {
                        print("Preview mode: Firebase skipped")
                    }
        }
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
            MainTabView()
        }
    }
}
