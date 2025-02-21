//
//  ImgZoom_Tool.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/17.
//

import SwiftUI
import Foundation

struct ImageItem: Identifiable {
    let id = UUID()
    let imageName: String
}

// Used for image scaling
struct ZoomableImage: View {
    let imageName: String
    
    @State private var scale: CGFloat = 1.0
    @State private var lastScale: CGFloat = 1.0
    @State private var offset: CGSize = .zero
    @State private var lastOffset: CGSize = .zero
    @State private var minScale: CGFloat = 1.0
    @State private var maxScale: CGFloat = 5.0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.gray.opacity(0.9).ignoresSafeArea()
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(scale)
                    .offset(offset)
                    .gesture(doubleTapGesture)
                    .gesture(magnificationGesture)
                    .gesture(dragGesture)
                    .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
    
    private var doubleTapGesture: some Gesture {
        TapGesture(count: 2).onEnded {
            withAnimation(.easeInOut) {
                if scale != 1.0 {
                    resetZoom()
                } else {
                    scale = 2.0
                }
            }
        }
    }
    
    private var magnificationGesture: some Gesture {
        MagnificationGesture()
            .onChanged { value in
                let delta = value / lastScale
                let newScale = scale * delta
                
                scale = min(max(newScale, minScale), maxScale)
                lastScale = value
            }
            .onEnded { _ in
                lastScale = 1.0
                constrainOffset()
            }
    }
    
    private var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                offset = CGSize(
                    width: lastOffset.width + value.translation.width,
                    height: lastOffset.height + value.translation.height
                )
            }
            .onEnded { _ in
                lastOffset = offset
                constrainOffset()
            }
    }
    
    private func resetZoom() {
        withAnimation {
            scale = 1.0
            offset = .zero
            lastOffset = .zero
        }
    }
    
    private func constrainOffset() {
        let maxOffset = (scale - 1) * 500
        offset.width = min(max(offset.width, -maxOffset), maxOffset)
        offset.height = min(max(offset.height, -maxOffset), maxOffset)
    }
}

// Used for image display
struct ImageView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .cornerRadius(8)
    }
}
