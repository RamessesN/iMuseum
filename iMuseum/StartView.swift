//
//  StartView.swift
//  Apple History
//
//  Created by 赵禹惟 on 2025/2/20.
//

import SwiftUI

struct StartView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var isActive = false
    @State private var opacityHistory = 0.0
    @State private var opacityFuture = 0.0
    @State private var opacity = 0.0
    @State private var scale: CGFloat = 1.5
    @State private var offsetY: CGFloat = 20

    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            VStack {
                Image(systemName: "apple.logo")
                    .resizable()
                    .frame(width: 80, height: 100)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                    .opacity(opacity)
                    .scaleEffect(scale)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.5)) {
                            opacity = 1.0
                            scale = 1.0
                        }
                    }
                
                Text("No history")
                    .font(.custom("Snell Roundhand", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                    .opacity(opacityHistory)
                    .offset(y: offsetY)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            withAnimation(.easeInOut(duration: 2.5)) {
                            opacityHistory = 1.0
                            offsetY = 0
                            }
                        }
                    }
                Text("No future")
                    .font(.custom("Snell Roundhand", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                    .opacity(opacityFuture)
                    .offset(y: offsetY)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                withAnimation(.easeInOut(duration: 2.5)) {
                                opacityFuture = 1.0
                                offsetY = 0
                            }
                        }
                    }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                isActive = true
            }
        }
        .fullScreenCover(isPresented: $isActive) {
            MainTabView()
        }
    }
}

#Preview {
    StartView()
}
