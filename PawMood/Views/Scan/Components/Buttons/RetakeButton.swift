//
//  RetakeButton.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//

import SwiftUI

struct RetakeButton: View {
    var onRetake: () -> Void

    var body: some View {
        HStack {
            Button(action: onRetake) {
                Image(systemName: "arrow.uturn.left.circle")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .foregroundColor(.blue)
            }
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
}
