//
//  GlobalStyles.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")

        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0

        self.init(red: r, green: g, blue: b)
    }
}

struct GlobalColors {
    static let background = Color(hex: "#D4F2F4")
    static let tabBar = Color(hex: "#D9F3F2")
    static let activeIcon = Color.blue
    static let inactiveIcon = Color.gray
}
