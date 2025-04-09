//
//  ProfileHeader.swift
//  PawMood
//
//  Created by WPH on 2025/4/7.
//
import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Profile")
                .font(.largeTitle)
                .fontDesign(.serif)
                .bold()
            HStack(spacing: 0) {
                Text("Hi ")
                    .font(.title3)
                    .fontDesign(.serif)
                Text("Lily")
                    .font(.title2)
                    .fontDesign(.serif)
                    .bold()
                Text("!👋  ")
                    .font(.title3)
                    .fontDesign(.serif)
                Text("Any pet cuddles today? 🐕")
                    .font(.title3)
                    .fontDesign(.serif)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
        }
    }
}
