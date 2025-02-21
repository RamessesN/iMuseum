//
//  M_ChipView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/13.
//

import SwiftUI

struct Item2: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let releaseDate: String
    let products: String
    let coreNumber: String
    let frequency: String
    let process: String
    let description: String
}

struct MSeriesDetailView: View {
    let items = [
        Item2(imageName: "M1_img", title: "M1", releaseDate: "2020", products: "MacBook Air (M1), MacBook Pro 13\" (M1), Mac mini (M1)", coreNumber: "4P+4E", frequency: "3.2GHz", process: "5nm", description: "First Apple Silicon for Mac, 16 billion transistors, unified memory architecture."),
        Item2(imageName: "M1Pro_img", title: "M1 Pro", releaseDate: "2021", products: "MacBook Pro 14\", MacBook Pro 16\"", coreNumber: "8P+2E", frequency: "3.2GHz", process: "5nm", description: "Enhanced performance, up to 32GB unified memory, improved GPU and media engines."),
        Item2(imageName: "M1Max_img", title: "M1 Max", releaseDate: "2021", products: "MacBook Pro 14\", MacBook Pro 16\"", coreNumber: "10P+2E", frequency: "3.2GHz", process: "5nm", description: "High-end variant of M1 Pro, up to 64GB unified memory, massive GPU with 32 cores."),
        Item2(imageName: "M1Ultra_img", title: "M1 Ultra", releaseDate: "2022", products: "Mac Studio", coreNumber: "20P+4E", frequency: "3.2GHz", process: "5nm", description: "Two M1 Max chips connected via UltraFusion, up to 128GB unified memory."),
        Item2(imageName: "M2_img", title: "M2", releaseDate: "2022", products: "MacBook Air (M2), MacBook Pro 13\" (M2)", coreNumber: "4P+4E", frequency: "3.5GHz", process: "5nm", description: "Successor to M1, 20 billion transistors, improved performance and efficiency."),
        Item2(imageName: "M2Pro_img", title: "M2 Pro", releaseDate: "2023", products: "MacBook Pro 14\", MacBook Pro 16\"", coreNumber: "10P+2E", frequency: "3.5GHz", process: "5nm", description: "Improved M1 Pro, up to 32GB unified memory, enhanced GPU and media engines."),
        Item2(imageName: "M2Max_img", title: "M2 Max", releaseDate: "2023", products: "MacBook Pro 14\", MacBook Pro 16\"", coreNumber: "12P+2E", frequency: "3.5GHz", process: "5nm", description: "High-end variant of M2 Pro, up to 96GB unified memory, massive GPU with 38 cores."),
        Item2(imageName: "M2Ultra_img", title: "M2 Ultra", releaseDate: "2023", products: "Mac Studio", coreNumber: "24P+4E", frequency: "3.5GHz", process: "5nm", description: "Two M2 Max chips connected via UltraFusion, up to 192GB unified memory."),
        Item2(imageName: "M3_img", title: "M3", releaseDate: "2024", products: "MacBook Air (M3), MacBook Pro 13\" (M3)", coreNumber: "4P+4E", frequency: "3.6GHz", process: "3nm", description: "First chip built with 3nm process, improved energy efficiency and performance."),
        Item2(imageName: "M3Pro_img", title: "M3 Pro", releaseDate: "2024", products: "MacBook Pro 14\", MacBook Pro 16\"", coreNumber: "8P+4E", frequency: "3.8GHz", process: "3nm", description: "Enhanced M3 performance with up to 36GB unified memory and improved GPU performance."),
        Item2(imageName: "M3Max_img", title: "M3 Max", releaseDate: "2024", products: "MacBook Pro 14\", MacBook Pro 16\"", coreNumber: "12P+4E", frequency: "4.0GHz", process: "3nm", description: "Top-tier M3 variant, offering up to 96GB unified memory and advanced GPU with 40 cores."),
        Item2(imageName: "M4_img", title: "M4", releaseDate: "2025", products: "MacBook Air (M4), MacBook Pro 13\" (M4)", coreNumber: "4P+4E", frequency: "3.8GHz", process: "3nm", description: "Further improvements in energy efficiency and CPU/GPU performance."),
        Item2(imageName: "M4Pro_img", title: "M4 Pro", releaseDate: "2025", products: "MacBook Pro 14\", MacBook Pro 16\"", coreNumber: "8P+4E", frequency: "4.0GHz", process: "3nm", description: "Pro-level chip with up to 40GB unified memory and enhanced performance for professional tasks."),
        Item2(imageName: "M4Max_img", title: "M4 Max", releaseDate: "2025", products: "MacBook Pro 14\", MacBook Pro 16\"", coreNumber: "12P+4E", frequency: "4.2GHz", process: "3nm", description: "M4's high-end variant, offering up to 128GB unified memory with superior GPU performance."),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 0) {
                    ForEach(items) { item in
                        VStack(alignment: .leading, spacing: 0) {
                            HStack(alignment: .center, spacing: 16) {
                                Image(item.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                
                                VStack(alignment: .leading, spacing: 1) {
                                    Text(item.title)
                                        .font(.system(size: 20, weight: .bold))
                                        .foregroundColor(.black)
                                    
                                    Text("Releasing Date: \(item.releaseDate)")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                    
                                    Text("Products: \(item.products)")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                    
                                    Text("Core Number: \(item.coreNumber)")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                    
                                    Text("Frequency: \(item.frequency)")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                    
                                    Text("Process: \(item.process)")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                    
                                    Text("Description: \(item.description)")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                                .padding(.vertical, 8)
                            }
                            .padding(.vertical, 8)
                            
                            if item.id != items.last?.id {
                                Divider()
                                    .background(Color.gray)
                                    .padding(.horizontal, 0)
                            }
                        }
                        .padding(.horizontal, 16)
                    }
                }
                .padding(.horizontal, 16)
            }
            .navigationTitle("M-Series Chips")
        }
    }
}

#Preview {
    MSeriesDetailView()
}
