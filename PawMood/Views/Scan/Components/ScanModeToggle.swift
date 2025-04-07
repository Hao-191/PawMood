//
//  ScanModeToggle.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//

import SwiftUI

struct ScanModeToggle: View {
    @Binding var selectedMode: ScanMode

    var body: some View {
        HStack(spacing: 0) {
            Button(action: { selectedMode = .photo }) {
                Text("Photo")
                    .padding()
                    .background(selectedMode == .photo ? Color(hex: "#8BE3E1") : .clear)
                    .cornerRadius(5)
            }
            Button(action: { selectedMode = .video }) {
                Text("Video")
                    .padding()
                    .background(selectedMode == .video ? Color(hex: "#8BE3E1") : .clear)
                    .cornerRadius(5)
            }
        }
        .font(.subheadline)
        .frame(height: 35)
        .background(Color.white)
        .clipShape(Capsule())
        .padding(.horizontal)
    }
}
