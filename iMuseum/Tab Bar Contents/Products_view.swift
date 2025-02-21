//
//  Products_view.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/7.
//

import SwiftUI

struct ProductsView: View {
    let modules = [
        ("iPhone", "iphone"),
        ("iPad", "ipad"),
        ("Mac", "macbook"),
        ("Vision Pro", "vision.pro"),
        ("Apple Watch", "applewatch"),
        ("Apple TV", "appletv"),
        ("More", "ellipsis.rectangle")
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(modules, id: \.0) { module in
                        NavigationLink(destination: destination_ProductsView(for: module.0)) {
                            Module_ProductsView(title: module.0, imageName: module.1)
                            }
                    }
                }
                .padding()
            }
            .navigationTitle("Products")
        }
    }
    
    @ViewBuilder
    private func destination_ProductsView(for title: String) -> some View {
            switch title {
            case "iPhone":
                iPhoneView()
            case "iPad":
                iPadView()
            case "Mac":
                MacView()
            case "Vision Pro":
                VisionView()
            case "Apple Watch":
                WatchView()
            case "Apple TV":
                tvView()
            case "More":
                MoreView()
            default:
                ProductsView()
        }
    }
}

#Preview {
    ProductsView()
}
