//
//  FavoriteDogView.swift
//  PawMood
//
//  Created by WPH on 2025/4/7.
//

import SwiftUI

struct FavoriteDogView: View {
    var body: some View {
        ScrollView{
            Text("You haven’t marked any favorite dogs yet!")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.horizontal)
        }
    }
}
