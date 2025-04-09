//
//  UserCard.swift
//  PawMood
//
//  Created by WPH on 2025/4/7.
//

import SwiftUI

struct UserCard: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white.opacity(0.3))
                .frame(height: 180)

            HStack {
                // Images on the left
                ZStack {
                    Image("tree_background")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200)
                        .offset(x: -10, y: -10)

                    Image("woman_dog")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                        .offset(x: 0, y: 60)
                }
                .frame(width: 120, height: 200)

                Spacer()

                // User info on the right
                VStack(alignment: .leading, spacing: 20) {
                    HStack(spacing: 10) {
                        Image("female-sharp")
                        Text("Lily Wang")
                            .font(.headline)
                    }

                    HStack(spacing: 10) {
                        Image(systemName: "person.text.rectangle")
                        Text("VD4LVOQ6MS0QR4")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }

                    // Badges (simplified)
                    WrapBadgeView(badges: [
                        "🌞Early Walker", "🥇BK Pet Lover of the Month",
                        "🚮Park Beauty", "🚴Hike & Pet", "🧡Golden Retriever"
                    ])
                }
                .padding(.trailing, 10)
                .frame(maxWidth: .infinity)
            }
            .padding(.horizontal)
        }
    }
}


