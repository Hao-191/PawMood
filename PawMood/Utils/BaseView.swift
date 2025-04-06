//
//  BaseView.swift
//  PawMood
//
//  Created by WPH on 2025/4/6.
//
import SwiftUI

struct BaseView<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        ZStack {
            GlobalColors.background
                .ignoresSafeArea()
            content
        }
    }
}
