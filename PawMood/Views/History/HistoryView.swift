//
//  HistoryView.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

import SwiftUI
import CoreLocation

struct HistoryView: View {
    let moodEntries = mockMoodEntries
    @EnvironmentObject var tabRouter: TabRouter
    @State private var showFullMap = false

    var body: some View {
        HistoryHeader()
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                // Weekly trend graph view
                MoodTrendChart(data: weeklyCuddles)
                            .padding()

                // Google Map integration
                NavigationStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Footprint Map")
                            .font(.title2.bold())
                            .padding(.bottom, 8)
                        
                        GoogleMapView(cuddleLocations: mockCuddles) {
                            showFullMap = true
                        }
                        .frame(height: 300)
                        .frame(width: 380)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        HStack {
                            Spacer()
                            Text("Tap to view your cuddling map")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        .padding(.top, 8)
                    }
                    .padding()
                    .navigationDestination(isPresented: $showFullMap) {
                        FullScreenMapView(cuddleLocations: mockCuddles)
                    }
                }

                // Mood History list
                Text("Mood History")
                    .font(.title2.bold())
                    .padding(.horizontal)
                VStack(spacing: 12) {
                    ForEach(moodEntries) { entry in
                        MoodHistoryRow(
                            time: entry.time,
                            breed: entry.breed,
                            percent: entry.percent
                        )
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

