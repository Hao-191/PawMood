//
//  TabToolBarView.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

import SwiftUI

enum Tab {
    case mood
    case chat
    case history
    case profile
}

struct TabToolBarView: View {
    let tabIcons = ["house", "chart.bar", "bubble.left", "person"]
    @Binding var selectedIndex: Int

    var body: some View {
        HStack {
            ForEach(0..<tabIcons.count, id: \.self) { index in
                Spacer()
                Button(action: {
                    selectedIndex = index
                }) {
                    Image(systemName: tabIcons[index])
                        .font(.system(size: 22, weight: .medium))
                        .foregroundColor(selectedIndex == index ? .blue : .gray)
                }
                Spacer()
            }
        }
        .padding(.vertical, 20)
        .pawTabBarStyle() // style
    }
}
