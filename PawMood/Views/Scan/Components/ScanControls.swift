//
//  ScanControls.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//

import SwiftUI

struct ScanControls: View {
    @Binding var selectedMode: ScanMode
    @Binding var hasCaptured: Bool
    var takeAction: () -> Void

    var body: some View {
        ZStack {
            // Center shutter/record button
            Button(action: takeAction) {
                Image(systemName: selectedMode == .photo ? "camera.circle" : "record.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .foregroundColor(selectedMode == .photo ? Color.blue.opacity(0.7) : .red)
            }

            // Right icon (photo library or video mode indicator)
            HStack {
                Spacer()
                Image(systemName: selectedMode == .photo ? "photo.on.rectangle" : "video.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28, height: 28)
            }
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
}


