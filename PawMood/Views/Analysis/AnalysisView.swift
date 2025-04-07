//
//  AnalysisView.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//

import SwiftUI

struct AnalysisView: View {
    @Binding var showAnalysisSheet: Bool
    var dismissAnalysis: () -> Void
    
    var body: some View {
        BaseView {
            ScrollView {
                VStack(alignment: .leading, spacing: 14) {
                    AnalysisHeader()
                    
                    // Image Card
                    FaceAnalysisCard()
                    
                    // Badge
                    AnalysisCompleteBadge(analysisPercent: 78.9)
                    
                    // Pet Info row
                    PetInfoRow(
                        breed: mockPetInfo.breed,
                        age: mockPetInfo.age,
                        gender: mockPetInfo.gender
                    )

                    // Emotion analysis
                    Text("Emotion Analysis")
                        .font(.title3)
                        .bold()
                        .foregroundColor(GlobalColors.darkBlue)
                    
                    EmotionAnalysisBars(emotions: mockEmotionStats)

                    // Suggestion
                    Text("Interaction Suggestions")
                        .font(.title3)
                        .bold()
                        .foregroundColor(GlobalColors.darkBlue)
                    InteractionSuggestion(suggestionText: "Consider a gentle play session with her toy followed by a relaxing petting session.")


                    // Chat Bar
//                    PetChatBar() {
//                        showAnalysisSheet = false
//                        dismissAnalysis()
//                    }
                    Button(action: {
                        dismissAnalysis()
                    }) {
                        Spacer()
                        HStack {
                            Image(systemName: "bubble.right.fill")
                            Text("More concerns? Ask PetGPT!")
                                .bold()
                        }
                        .padding()
                        .frame(width: 300)
                        .background(Color.white.opacity(0.9))
                        .foregroundColor(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .shadow(radius: 3)
                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
            }
        }
    }
}
