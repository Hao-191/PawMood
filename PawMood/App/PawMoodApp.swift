//
//  PawMoodApp.swift
//  PawMood
//
//  Created by WPH on 2025/4/3.
//

import SwiftUI
import FirebaseCore
import GoogleMaps

@main
struct PawMoodApp: App {
    // Initialize Firebase as soon as the app launches
        init() {
            // Skip Firebase config in preview mode
                    if !PreviewHelper.isPreview { // take preview helper to avoid firebase bug
                        FirebaseApp.configure()
                        GMSServices.provideAPIKey("AIzaSyCOcC8IJfS9mtOCr1IpZ6D2ZEbwVqQxndA")
                        print("Firebase & Google Maps configured")
                    } else {
                        print("Preview mode: Firebase skipped")
                    }
        }
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
            MainTabView().environmentObject(TabRouter())
        }
    }
}
