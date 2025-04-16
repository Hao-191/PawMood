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


import SwiftUI
import PhotosUI   // ← needed

struct ScanView: View {
    @State private var selectedMode       = ScanMode.photo
    @State private var hasCaptured        = false

    // these two were already here:
    @Binding var navigateToScan: Bool
    @Binding var showAnalysisSheet: Bool

    // ← new state
    @State private var showPhotoPicker       = false
    @State private var selectedPhotoItem: PhotosPickerItem?
    @State private var capturedImage: UIImage? = nil


    var body: some View {
        BaseView {
            VStack(alignment: .leading, spacing: 20) {
                ScanHeader()
                ScanModeToggle(selectedMode: $selectedMode)
                PositioningGuide()
                
                CameraView()
                    .frame(height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 32))
                    .padding(.horizontal)
                
                if !hasCaptured {
                    ScanControls(
                        selectedMode: $selectedMode,
                        hasCaptured: $hasCaptured,
                        takeAction: {
                            hasCaptured = true
                        },
                        openLibrary: {
                            showPhotoPicker = true
                        }
                    )
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
                                navigateToScan = false
                                DispatchQueue.main.asyncAfter(deadline: .now()+0.3) {
                                    showAnalysisSheet = true
                                }
                            }
                            Spacer()
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .photosPicker(                // ← present the picker
                isPresented: $showPhotoPicker,
                selection:    $selectedPhotoItem,
                matching:     .images,
                photoLibrary: .shared()
            )
            .photosPicker(isPresented: $showPhotoPicker, selection: $selectedPhotoItem)
            .onChange(of: selectedPhotoItem) {
                Task {
                    guard
                        let item = selectedPhotoItem,
                        let data = try? await item.loadTransferable(type: Data.self),
                        let uiImg = UIImage(data: data)
                    else { return }
                    
                    capturedImage = uiImg
                    hasCaptured   = true
                }
            }
        }
    }
}



