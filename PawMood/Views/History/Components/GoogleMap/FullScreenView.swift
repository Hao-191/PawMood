//
//  FullScreenView.swift
//  PawMood
//
//  Created by WPH on 2025/4/8.
//

import SwiftUI
import GoogleMaps

struct FullScreenMapView: View {
    var cuddleLocations: [CuddleLocation]

    var body: some View {
        GoogleMapView(cuddleLocations: cuddleLocations)
            .edgesIgnoringSafeArea(.all)
            .navigationTitle("Nearby Cuddles")
            .navigationBarTitleDisplayMode(.inline)
    }
}
