//
//  MoodView.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

import SwiftUI

struct MoodView: View {
    
    let moodEntries = mockMoodEntries
    let happy = MockMoodStats.happy
    let receptive = MockMoodStats.receptive
    
    @State private var navigateToScan = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // Header
                    Text("PawMood")
                        .font(.largeTitle.bold())
                        .padding(.top)
                    
                    // Sniff My Mood Card
                    // tappable sniff card
                    Button {
                        navigateToScan = true
                    } label: {
                        SniffMoodCard()
                    }
                    .buttonStyle(PlainButtonStyle()) // no button styling
                    
                    // Today’s Overview
                    OverviewCard(happy: happy, receptive: receptive)
                    
                    // Recent History
                    HStack {
                        Text("Recent History")
                            .font(.headline)
                        Spacer()
                        Button("See All") {
                            // navigate or action
                        }
                        .font(.subheadline)
                    }
                    
                    VStack(spacing: 12) {
                        ForEach(moodEntries) { entry in
                            MoodHistoryRow(
                                time: entry.time,
                                breed: entry.breed,
                                percent: entry.percent
                            )
                        }
                    }
                }
                .padding()
            }
            .navigationDestination(isPresented: $navigateToScan) {
                ScanView()
            }
        }
    }
}

#Preview {
    MoodView()
}
