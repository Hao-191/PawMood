//
//  ProfileView.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
            VStack(spacing: 24) {
                // Greeting & Image Header
                ProfileHeader()

                // User Card
                UserCard()

                // Tabs: Footprint / Favorite Dogs
                ProfileTabs()
            }
            .padding()
    }
}

