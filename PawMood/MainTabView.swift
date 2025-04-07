//
//  MainTabView.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

import SwiftUI

struct MainTabView: View {
    // tab router for 
    @StateObject private var tabRouter = TabRouter()
    
    var body: some View {
        NavigationStack {
            BaseView {
                VStack(spacing: 0) {
                    Group {
                        switch tabRouter.selectedIndex {
                        case 0: MoodView()
                        case 1: ChatView()
                        case 2: HistoryView()
                        case 3: ProfileView()
                        default: MoodView()
                        }
                    }
                    if tabRouter.selectedIndex != 1 {
                        TabToolBarView(selectedIndex: $tabRouter.selectedIndex)
                    }
                }.id(tabRouter.selectedIndex)
            }
        }
        .environmentObject(tabRouter)
    }
}

#Preview {
    MainTabView().environmentObject(TabRouter())
}

