//
//  HistoryMocks.swift
//  PawMood
//
//  Created by WPH on 2025/4/8.
//

import CoreLocation

let mockCuddles: [CuddleLocation] = [
    CuddleLocation(
        coordinate: CLLocationCoordinate2D(latitude: 40.6928, longitude: -73.9850),
        title: "Brooklyn Cuddle",
        snippet: "2 dogs here today"
    ),
    CuddleLocation(
        coordinate: CLLocationCoordinate2D(latitude: 40.6935, longitude: -73.9870),
        title: "Jay St Cuddle",
        snippet: "Golden Retriever spotted"
    )
]

let weeklyCuddles: [CuddleData] = [
    .init(dateLabel: "3.1", count: 1),
    .init(dateLabel: "3.8", count: 0),
    .init(dateLabel: "3.15", count: 4),
    .init(dateLabel: "3.22", count: 1),
    .init(dateLabel: "3.29", count: 3)
]


