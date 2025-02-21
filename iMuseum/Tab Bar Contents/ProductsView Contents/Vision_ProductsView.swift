//
//  Vision_ProductsView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/8.
//

import SwiftUI

struct VisionView: View {
    @State private var isToolbarHidden = true
    
    let items = [
        ProductItem(
            imageName: "VisionPro_img",
            title: "Vision Pro",
            releaseDate: "2023",
            screenSize: nil,
            resolution: "3800x3000",
            processor: "M2 & R1",
            camera: nil,
            description: "Vision Pro combines digital content with the real world, offering intuitive eye-tracking and gesture controls for immersive work and play."
        )
    ]
    
    var body: some View {
        ProductView(title: "Vision Pro", items: items)
            .toolbar(isToolbarHidden ? .hidden : .visible, for: .tabBar)
            .onAppear {
                isToolbarHidden = true
            }
            .onDisappear {
                isToolbarHidden = false
            }
    }
}

#Preview {
    VisionView()
}
