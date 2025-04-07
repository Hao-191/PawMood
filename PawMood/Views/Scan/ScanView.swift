//
//  ScanView.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

import SwiftUI

enum ScanMode {
    case photo
    case video
}


struct ScanView: View {
    @State private var selectedMode: ScanMode = .photo
    @State private var hasCaptured = false
    @Binding var navigateToScan: Bool
    @Binding var showAnalysisSheet: Bool
    
    var body: some View {
        BaseView {
            VStack(alignment: .leading, spacing: 20) {
                ScanHeader()
                ScanModeToggle(selectedMode: $selectedMode)
                PositioningGuide()
                ViewfinderPlaceholder()
                if !hasCaptured {
                    ScanControls(selectedMode: $selectedMode, hasCaptured: $hasCaptured){
                        // Replace this with real capture logic later
                        hasCaptured = true
                    }
                }
                else {
                    ZStack {
                        HStack {
                            RetakeButton {
                                hasCaptured = false
                            }
                            Spacer()
                        }

                        HStack {
                            Spacer()
                            AnalyzeButton {
                                navigateToScan = false // Pop ScanView
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                    showAnalysisSheet = true // Show AnalysisView as sheet
                                }
                            }
                            Spacer()
                        }
                    }
                    .padding(.horizontal)

                }
            }
        }
    }
}


