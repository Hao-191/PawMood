//
//  PetChatBar.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//

import SwiftUI

struct ChatBar: View {
    @Binding var inputText: String
    var onSend: () -> Void
    
    var body: some View {
        HStack {
            Image(systemName: "pawprint.circle")
                .font(.title2)

            TextField("Chat with PetGPT", text: $inputText)
                .textFieldStyle(PlainTextFieldStyle())
                .padding(.horizontal, 4)
                .foregroundColor(.gray)

            Spacer()

            Button(action: onSend) {
                Image(systemName: "paperplane")
                    .font(.title3)
                    .foregroundColor(.black)
                    .opacity(0.7)
            }
        }
        .padding()
        .background(Color.white)
        .frame(width: 340)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 2)
        .background(.ultraThinMaterial)
    }
}
