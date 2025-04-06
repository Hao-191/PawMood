//
//  SniffMoodCard.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

import SwiftUI

struct SniffMoodCard: View {
    var body: some View {
        VStack(spacing: 8) {
//            Image(systemName: "pawprint.fill")
            Image(systemName: "viewfinder.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .foregroundColor(.black)

            Text("Sniff my mood!")
                .font(.title.bold())

            Text("Tap to discover how the dog is feeling today")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(hex: "#A8EAE7"))
        .cornerRadius(16)
    }
}

