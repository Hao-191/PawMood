//
//  PetInfoRow.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//

import SwiftUI

struct PetInfoRow: View {
    let breed: String
    let age: String
    let gender: String

    var body: some View {
        HStack() {
            Group {
                Text("Breed: ")
                + Text(breed).bold()

                Text("Age Est: ")
                + Text(age).bold()

                Text("Gender: ")
                + Text(gender).bold()
            }
            .foregroundColor(Color(hex: "#005A9C"))
            .font(.caption)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white.opacity(0.4))
        .cornerRadius(12)
    }
}
