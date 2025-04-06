//
//  MainTabView.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0

    var body: some View {
        NavigationStack {
            BaseView {
                VStack(spacing: 0) {
                    Group {
                        switch selectedIndex {
                        case 0: MoodView()
                        case 1: ChatView()
                        case 2: HistoryView()
                        case 3: ProfileView()
                        default: MoodView()
                        }
                    }
                    TabToolBarView(selectedIndex: $selectedIndex)
                }
            }
        }
    }
}

#Preview {
    MainTabView()
}

