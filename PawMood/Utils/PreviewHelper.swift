//
//  PreviewHelper.swift
//  PawMood
//
//  Created by WPH on 2025/4/4.
//

import Foundation

/// A utility to check if the app is running in Xcode preview (Canvas mode)
enum PreviewHelper {
    static var isPreview: Bool {
        ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1"
    }
}

