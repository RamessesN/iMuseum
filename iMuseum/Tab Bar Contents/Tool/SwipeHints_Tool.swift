//
//  SwipeHints_Tool.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/18.
//

import SwiftUI

struct SwipeHintView<Content: View>: View {
    @State private var showHint = true
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            if showHint {
                VStack {
                    content
                        .padding()
                }
                .background(Color(UIColor.gray))
                .cornerRadius(10)
                .transition(.opacity)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        withAnimation {
                            showHint = false
                        }
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

extension SwipeHintView where Content == AnyView {
    init(message: String, imageName: String) {
        self.init {
            AnyView(
                VStack {
                    Text(message)
                        .font(.system(size: 23, weight: .bold, design: .rounded))
                        .foregroundColor(Color(UIColor.systemBackground))
                    
                    Image(systemName: imageName)
                        .resizable()
                        .frame(width: 60, height: 60)
                        .font(.system(size: 23, weight: .bold))
                        .foregroundColor(.white)
                }
            )
        }
    }
}
