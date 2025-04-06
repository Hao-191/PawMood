//
//  TabToolBarStyle.swift
//  PawMood
//
//  Created by WPH on 2025/4/5.
//

import SwiftUI

// ViewModifier for tab bar background
struct TabBarBackgroundModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
                    .background(
                        Color(hex: "#D9F3F2")
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .shadow(radius: 4)
//                            .padding(.horizontal, 2) // add same horizontal inset to match corner shape
//                            .padding(.bottom, 10)
                    )
                    .frame(maxWidth: .infinity, alignment: .bottom)
                    .ignoresSafeArea(.keyboard) // optional: let keyboard overlay the bar
    }
}

extension View {
    func pawTabBarStyle() -> some View {
        self.modifier(TabBarBackgroundModifier())
    }
}

