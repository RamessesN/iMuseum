//
//  Introduction_SteveJobs_View.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/15.
//

import SwiftUI

struct Introduction_SteveJobs_View: View {
    @State private var showFirstText = false
    @State private var showSecondText = false
    @State private var offsetY: CGFloat = 20
    @State private var opacityHistory = 0.0
    @State private var opacityFuture = 0.0

    var body: some View {
        VStack(spacing: 20) {
            if showFirstText {
                Text("The Story of Steve Jobs")
                    .font(.custom("Times New Roman", size: 35))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
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
            }
            
            if showSecondText {
                Text(" -- From Rebellious Teen to Tech Legend")
                    .font(.custom("Snell Roundhand", size: 35))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
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
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.gray)
                .opacity(0.85)
        )
        .onAppear {
            withAnimation(.easeInOut.delay(0.5)) {
                showFirstText = true
            }
            withAnimation(.easeInOut.delay(1.0)) {
                showSecondText = true
            }
        }
        .padding(.horizontal, 5.03)
    }
}
