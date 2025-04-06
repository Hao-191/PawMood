//
//  OverviewCard.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

import SwiftUI

struct OverviewCard: View {
    let happy: Int
    let receptive: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Today's Overview")
                .font(.headline)

            VStack(alignment: .leading, spacing: 4) {
                Label("Happy: \(happy)%", systemImage: "face.smiling")
                Label("Receptive: \(receptive)%", systemImage: "paperplane.fill")
            }
            .font(.subheadline)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white.opacity(0.3))
        .cornerRadius(16)
    }
}

