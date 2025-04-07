//
//  ChatBubble.swift
//  PawMood
//
//  Created by WPH on 2025/4/7.
//

import SwiftUI

struct ChatBubble: View {
    let message: ChatMessage

    var body: some View {
        VStack(alignment: message.isUser ? .trailing : .leading, spacing: 4) {
            HStack {
                if !message.isUser {
                    Image(systemName: "brain.head.profile")
                        .font(.title2)
                        .foregroundColor(.blue)
                        .padding(.top, 2)
                }

                Text(message.message)
                    .padding()
                    .background(message.isUser ? Color.blue.opacity(0.2) : Color.white)
                    .foregroundColor(.primary)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .frame(maxWidth: 280, alignment: message.isUser ? .trailing : .leading)

                if message.isUser {
                    Image(systemName: "person")
                        .font(.title2)
                        .foregroundColor(.blue)
                        .padding(.top, 2)
                }
            }

            Text(message.timestamp)
                .font(.caption2)
                .foregroundColor(.gray)
                .padding(message.isUser ? .trailing : .leading, 35)
            
        }
        .frame(maxWidth: .infinity, alignment: message.isUser ? .trailing : .leading)
    }
}


