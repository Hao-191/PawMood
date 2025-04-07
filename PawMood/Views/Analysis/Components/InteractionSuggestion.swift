//
//  InteractionSuggestion.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//

import SwiftUI

struct InteractionSuggestion: View {
    var suggestionText: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(suggestionText)
                .font(.body)
                .foregroundColor(GlobalColors.darkBlue)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.white.opacity(0.3))
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(GlobalColors.lightBlue, lineWidth: 2)
                )
                .cornerRadius(12)
        }
        .frame(maxWidth: .infinity)
    }
}
