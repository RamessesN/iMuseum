//
//  Layout_Products_Tool.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/20.
//

import SwiftUI

struct ProductItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let releaseDate: String
    let screenSize: String?
    let resolution: String
    let processor: String
    let camera: String?
    let description: String
}

struct ProductDetailsView: View {
    let item: ProductItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(item.title)
                .font(.headline)
                .foregroundColor(.primary)
            
            Text("Release Date: \(item.releaseDate)")
                .font(.subheadline)
                .foregroundColor(.secondary)
                        
            if let screenSize = item.screenSize {
                Text("Screen Size: \(screenSize)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text("Resolution: \(item.resolution)")
                .font(.subheadline)
                .foregroundColor(.secondary)
                        
            Text("Processor: \(item.processor)")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            if let camera = item.camera {
                Text("Camera: \(camera)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text("Description: \(item.description)")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

struct ProductItemRow: View {
    let item: ProductItem
    let onSelect: () -> Void
    
    var body: some View {
        Button(action: onSelect) {
            HStack(alignment: .center, spacing: 16) {
                ImageView(imageName: item.imageName)
                ProductDetailsView(item: item)
            }
            .padding(.vertical, 12)
        }
        .buttonStyle(.plain)
    }
}

struct ProductView: View {
    let title: String
    let items: [ProductItem]
    
    @State private var selectedImage: ImageItem? = nil
    
    var body: some View {
        NavigationStack {
            ScrollView {
                contentList
            }
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.large)
            .sheet(item: $selectedImage) { imageItem in
                ZoomableImage(imageName: imageItem.imageName)
                    .presentationDetents([.medium, .large])
                    .presentationBackground(.black)
            }
        }
    }
    
    private var contentList: some View {
        VStack(spacing: 0) {
            ForEach(items) { item in
                ProductItemRow(item: item) {
                    selectedImage = ImageItem(imageName: item.imageName)
                }
                
                if item.id != items.last?.id {
                    Divider()
                        .overlay(Color.gray.opacity(0.5))
                        .padding(.horizontal, 16)
                }
            }
        }
        .padding(.horizontal, 16)
    }
}
