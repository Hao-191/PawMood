//
//  FootprintList.swift
//  PawMood
//
//  Created by WPH on 2025/4/7.
//

import SwiftUI

struct ProfileTabs: View {
    @State private var selectedTab = 0
    let tabs = ["My Footprint", "My Favorite Dog"]

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Top Tabs
            HStack {
                ForEach(0..<tabs.count, id: \.self) { index in
                    Button(action: {
                        selectedTab = index
                    }) {
                        Text(tabs[index])
                            .font(.title3)
                            .bold()
                            .foregroundColor(selectedTab == index ? .black : .gray)
                            .underline(selectedTab == index, color: .blue)
                    }
                    Spacer()
                }
            }
            .padding(.horizontal)

            // Content
            if selectedTab == 0 {
                FootprintListView(footprints: mockFootprints)
                    .padding(.horizontal)
            } else {
                FavoriteDogView()
                    .padding(.horizontal)
            }
        }
        .padding(.top)
    }
}


