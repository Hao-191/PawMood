//
//  MoodTrendChat.swift
//  PawMood
//
//  Created by WPH on 2025/4/8.
//
import SwiftUI
import Charts

struct MoodTrendChart: View {
    var data: [CuddleData]
    @State private var selectedData: CuddleData?
    @State private var animateChart = false

    var body: some View {
        VStack(alignment: .leading) {
            Text("Weakly Cuddle Overview")
                .font(.title2.bold())
            
            ZStack {
                ChartContent(data: data, selectedData: $selectedData, animate: animateChart)
                    .frame(height: 250)
                    .onAppear {
                        withAnimation(.easeOut(duration: 0.3)) {
                            animateChart = true
                        }
                    }
            }
            .background(Color.white.opacity(0.3))
            .clipShape(RoundedRectangle(cornerRadius: 24))
        }
    }
}

