//
//  x86_ChipView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/13.
//

import SwiftUI

struct Item3: Identifiable {
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

struct X86DetailView: View {
    let items = [
        Item3(imageName: "Intel_Core_2_Duo_img", title: "Intel Core 2 Duo", releaseDate: "2006", products: "MacBook, MacBook Pro, iMac", coreNumber: "2P", frequency: "2.4GHz", process: "65nm", description: "First Intel-based Macs, transition from PowerPC to x86 architecture."),
        Item3(imageName: "Intel_Core_i3_img", title: "Intel Core i3", releaseDate: "2010", products: "MacBook, iMac", coreNumber: "2P", frequency: "2.1GHz", process: "32nm", description: "Entry-level processor for consumer-grade Mac products, integrated graphics."),
        Item3(imageName: "Intel_Core_i5_img", title: "Intel Core i5", releaseDate: "2009", products: "MacBook Air, MacBook Pro, iMac, Mac mini", coreNumber: "2P+2E", frequency: "2.3GHz", process: "32nm", description: "Introduced Turbo Boost and Hyper-Threading for enhanced performance."),
        Item3(imageName: "Intel_Core_i7_img", title: "Intel Core i7", releaseDate: "2010", products: "MacBook Pro, iMac, Mac mini", coreNumber: "4P", frequency: "2.7GHz", process: "32nm", description: "High-performance processors for professional use cases."),
        Item3(imageName: "Intel_Core_i9_img", title: "Intel Core i9", releaseDate: "2017", products: "iMac Pro, MacBook Pro", coreNumber: "6P", frequency: "3.6GHz", process: "14nm", description: "Powerful processors designed for creative professionals and developers."),
        Item3(imageName: "Intel_Xeon_W_img", title: "Intel Xeon W", releaseDate: "2017", products: "Mac Pro", coreNumber: "18P", frequency: "3.0GHz", process: "14nm", description: "Workstation-grade processor with high core count and ECC memory support."),
        Item3(imageName: "Intel_Core_i5_10th_gen_img", title: "Intel Core i5 (10th Gen)", releaseDate: "2020", products: "MacBook Air, MacBook Pro 13\" (2020)", coreNumber: "4P", frequency: "1.1GHz - 3.8GHz", process: "10nm", description: "10th generation with better performance, higher clock speeds, and improved power efficiency."),
        Item3(imageName: "Intel_Core_i7_10th_gen_img", title: "Intel Core i7 (10th Gen)", releaseDate: "2020", products: "MacBook Pro 13\" (2020)", coreNumber: "4P", frequency: "2.0GHz - 4.1GHz", process: "10nm", description: "High-performance 10th-gen chip with faster multi-threaded performance and better GPU capabilities."),
        Item3(imageName: "Intel_Core_i9_10th_gen_img", title: "Intel Core i9 (10th Gen)", releaseDate: "2020", products: "MacBook Pro 16\" (2020)", coreNumber: "8P", frequency: "2.3GHz - 4.8GHz", process: "10nm", description: "10th-gen, 8-core processor, focused on high-end professional performance."),
        Item3(imageName: "Intel_Core_i5_11th_gen_img", title: "Intel Core i5 (11th Gen)", releaseDate: "2021", products: "MacBook Pro 13\" (2021)", coreNumber: "4P", frequency: "2.4GHz - 4.2GHz", process: "10nm", description: "11th-gen chip with integrated Intel Iris Xe graphics, delivering strong performance and battery life."),
        Item3(imageName: "Intel_Core_i7_11th_gen_img", title: "Intel Core i7 (11th Gen)", releaseDate: "2021", products: "MacBook Pro 13\" (2021)", coreNumber: "4P", frequency: "2.8GHz - 4.7GHz", process: "10nm", description: "11th-gen with significant improvements in single-core performance, integrated graphics, and power efficiency."),
        Item3(imageName: "Intel_Xeon_W_12th_gen_img", title: "Intel Xeon W (12th Gen)", releaseDate: "2022", products: "Mac Pro", coreNumber: "12P", frequency: "2.3GHz - 4.0GHz", process: "10nm", description: "Workstation-grade processor, designed for demanding professional applications."),
        Item3(imageName: "Intel_Core_i9_12th_gen_img", title: "Intel Core i9 (12th Gen)", releaseDate: "2022", products: "MacBook Pro 16\" (2022), Mac Studio", coreNumber: "8P+8E", frequency: "3.0GHz - 5.0GHz", process: "10nm", description: "Powerful 12th-gen CPU with hybrid core architecture, targeting pro users for maximum performance."),
        Item3(imageName: "Intel_Core_i5_12th_gen_img", title: "Intel Core i5 (12th Gen)", releaseDate: "2022", products: "MacBook Air (2022), MacBook Pro 13\" (2022)", coreNumber: "6P", frequency: "2.5GHz - 4.5GHz", process: "10nm", description: "12th-gen chip offering improved multi-core performance, suitable for power-efficient laptops.")
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
            .navigationTitle("Intel Chips")
        }
    }
}

#Preview {
    X86DetailView()
}
