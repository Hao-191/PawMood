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
                    if ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] != "1" {
                        FirebaseApp.configure()
                        print("Firebase configured")
                    } else {
                        print("Preview mode: Firebase skipped")
                    }
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
