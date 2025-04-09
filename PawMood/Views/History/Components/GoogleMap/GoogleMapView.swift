//
//  GoogleMapView.swift
//  PawMood
//
//  Created by WPH on 2025/4/8.
//

import SwiftUI
import GoogleMaps

import SwiftUI
import GoogleMaps

struct GoogleMapView: UIViewRepresentable {
    var cuddleLocations: [CuddleLocation]
    var onMapTap: (() -> Void)? = nil

    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(
            withLatitude: cuddleLocations.first?.coordinate.latitude ?? 40.6928,
            longitude: cuddleLocations.first?.coordinate.longitude ?? -73.9850,
            zoom: 15
        )
        let mapView = GMSMapView(frame: .zero, camera: camera)
        mapView.delegate = context.coordinator

        for spot in cuddleLocations {
            let marker = GMSMarker()
            marker.position = spot.coordinate
            marker.icon = UIImage(named: "paw_pink")
            marker.title = spot.title
            marker.snippet = spot.snippet
            marker.map = mapView
        }

        return mapView
    }

    func updateUIView(_ uiView: GMSMapView, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(onMapTap: onMapTap)
    }

    class Coordinator: NSObject, GMSMapViewDelegate {
        let onMapTap: (() -> Void)?

        init(onMapTap: (() -> Void)?) {
            self.onMapTap = onMapTap
        }

        // This is triggered when the user taps a marker
        func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
            // Show marker info window, but do NOT trigger fullscreen
            mapView.selectedMarker = marker
            return true // we handled it
        }

        // Only trigger fullscreen if user taps the map background
        func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D) {
            onMapTap?()
        }
    }

}




