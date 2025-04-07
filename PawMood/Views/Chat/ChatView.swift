//
//  ChatView.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

import SwiftUI

struct ChatView: View {
    @EnvironmentObject var tabRouter: TabRouter
    @State private var userInput: String = ""
    @State private var messages: [ChatMessage] = mockChatMessages

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                ChatHeader()
                ScrollViewReader { proxy in
                    ScrollView {
                        VStack(alignment: .leading, spacing: 12) {
                            // chat content
                            ForEach(messages) { msg in ChatBubble(message: msg)}
                        }
                        .padding()
                    }
                }
                
                // Chat bar at the bottom
                ChatBar(inputText: $userInput) {
                    if !userInput.isEmpty {
                        let newMessage = ChatMessage(isUser: true, message: userInput, timestamp: getCurrentTimestamp())
                        messages.append(newMessage)
                        userInput = ""
                        
                        // TODO: Insert logic to fetch GPT response and append another message
                    }
                }
            }
            
            // floating button
            Button(action: {
                tabRouter.selectedIndex = 0
            }) {
                Image(systemName: "house.fill")
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(radius: 3)
            }
            .padding(.trailing, 10)
            .padding(.bottom, 80)
        }
    }
    
    func getCurrentTimestamp() -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: Date())
    }
}
