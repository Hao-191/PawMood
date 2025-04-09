//
//  Footprint.swift
//  PawMood
//
//  Created by WPH on 2025/4/7.
//

import SwiftUI

struct FootprintListView: View {
    let footprints: [Footprint]

    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                ForEach(footprints) { footprint in
                    HStack {
                        VStack(alignment: .leading, spacing: 1) {
                            Text(footprint.location)
                                .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(Color.black)
                            Text(footprint.detail)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        HStack(spacing: 10) {
                            ForEach(footprint.icons, id: \.self) { icon in
                                Image(icon)
                                    .font(.title2)
                            }
                        }
                    }
                    .padding(15)
                    .frame(maxWidth: .infinity)
                    .background(Color.white.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                }
            }
        }
    }
}

