//
//  A_ChipView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/13.
//

import SwiftUI

struct Item: Identifiable {
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

struct ASeriesDetailView: View {
    let items = [
        Item(imageName: "A4_img", title: "A4", releaseDate: "2010", products: "iPhone 4, iPad 1", coreNumber: "1P", frequency: "1GHz", process: "45nm", description: "First custom chip by Apple, based on ARM Cortex-A8."),
        Item(imageName: "A5_img", title: "A5", releaseDate: "2011", products: "iPhone 4s, iPad 2", coreNumber: "2P", frequency: "800MHz", process: "45nm", description: "2x performance, 7x GPU boost, introduced M7 co-processor."),
        Item(imageName: "A6_img", title: "A6", releaseDate: "2012", products: "iPhone 5", coreNumber: "2P", frequency: "1.3GHz", process: "32nm", description: "Custom core, 40% performance boost, 50% GPU boost."),
        Item(imageName: "A7_img", title: "A7", releaseDate: "2013", products: "iPhone 5s, iPad Air, iPad Mini 2", coreNumber: "2P", frequency: "1.3GHz", process: "28nm", description: "First 64-bit chip, 40% performance boost, 50% GPU boost."),
        Item(imageName: "A8_img", title: "A8", releaseDate: "2014", products: "iPhone 6, iPhone 6 Plus, iPad Air 2", coreNumber: "2P", frequency: "1.4GHz", process: "20nm", description: "25% performance boost, 50% GPU boost, first use of M8 co-processor."),
        Item(imageName: "A9_img", title: "A9", releaseDate: "2015", products: "iPhone 6s, iPhone 6s Plus, iPhone SE(1st), iPad Pro", coreNumber: "2P", frequency: "2.0GHz", process: "14nm", description: "70% performance boost, 90% GPU boost, 3D Touch support."),
        Item(imageName: "A10_img", title: "A10 Fusion", releaseDate: "2016", products: "iPhone 7, iPhone 7 Plus", coreNumber: "2P+2E", frequency: "2.34GHz", process: "16nm", description: "4-core design, balance between performance and power efficiency."),
        Item(imageName: "A11_img", title: "A11 Bionic", releaseDate: "2017", products: "iPhone 8, iPhone 8 Plus, iPhone X", coreNumber: "2P+4E", frequency: "2.39GHz", process: "10nm", description: "Introduced Neural Engine, enhanced AR and machine learning."),
        Item(imageName: "A12_img", title: "A12 Bionic", releaseDate: "2018", products: "iPhone XS, iPhone XS Max, iPhone XR", coreNumber: "2P+4E", frequency: "2.5GHz", process: "7nm", description: "First 7nm process, 20% performance boost, 50% GPU boost."),
        Item(imageName: "A13_img", title: "A13 Bionic", releaseDate: "2019", products: "iPhone 11, iPhone 11 Pro, iPhone 11 Pro Max, iPhone SE(2nd)", coreNumber: "2P+4E", frequency: "2.65GHz", process: "7nm+", description: "20% performance boost, 30% energy efficiency, camera optimization."),
        Item(imageName: "A14_img", title: "A14 Bionic", releaseDate: "2020", products: "iPhone 12, iPhone 12 Mini, iPhone 12 Pro, iPhone 12 Pro Max, iPad Air 4", coreNumber: "2P+4E", frequency: "2.65GHz", process: "5nm", description: "First 5nm chip, 17% performance boost, enhanced AI processing."),
        Item(imageName: "A15_img", title: "A15 Bionic", releaseDate: "2021", products: "iPhone 13, iPhone 14, iPhone 13 Mini, iPhone 13 Pro, iPhone 13 Pro Max, iPhone SE 3, iPad Mini 6", coreNumber: "2P+4E", frequency: "2.65GHz", process: "5nm", description: "25% performance boost, 50% GPU boost, enhanced AI processing."),
        Item(imageName: "A16_img", title: "A16 Bionic", releaseDate: "2022", products: "iPhone 15, iPhone 14 Pro, iPhone 14 Pro Max", coreNumber: "2P+4E", frequency: "3.46GHz", process: "4nm", description: "New GPU architecture, 25% performance boost, optimized camera and display."),
        Item(imageName: "A17_img", title: "A17 Pro", releaseDate: "2023", products: "iPhone 16, iPhone 15 Pro, iPhone 15 Pro Max", coreNumber: "2P+6E", frequency: "3.78GHz", process: "3nm", description: "First 3nm chip, performance and efficiency boost, optimized for gaming and AI."),
        Item(imageName: "A18_img", title: "A18 Pro", releaseDate: "2024", products: "iPhone 16 Pro, iPhone 16 Pro Max", coreNumber: "2P+6E", frequency: "4.05GHz", process: "3nm", description: "Second-gen 3nm process, improved transistor density and energy efficiency.")
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
                                        .foregroundColor(.gray
                                        )
                                    
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
            .navigationTitle("A-Series Chips")
        }
    }
}

#Preview {
    ASeriesDetailView()
}
