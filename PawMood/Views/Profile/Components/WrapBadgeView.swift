//
//  WrapBadgeView.swift
//  PawMood
//
//  Created by WPH on 2025/4/7.
//

import SwiftUI

struct WrapBadgeView: View {
    let badges: [String]

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            ForEach(badges.chunked(into: 2), id: \.self) { row in
                HStack {
                    ForEach(row, id: \.self) { badge in
                        Text(badge)
                            .font(.system(size: 9))
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(8)
                    }
                }
            }
        }
    }
}

// Helper for chunking badges
extension Array {
    func chunked(into size: Int) -> [[Element]] {
        stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
