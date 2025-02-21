//
//  Motorola_ChipView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/13.
//

import SwiftUI

struct Item000: Identifiable {
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

struct MotorolaDetailView: View {
    let items = [
        Item000(imageName: "Motorola_68000_img", title: "Motorola 68000", releaseDate: "1979", products: "Macintosh (1984)", coreNumber: "16/32-bit", frequency: "8MHz", process: "5µm", description: "The Motorola 68000 powered the original Macintosh, marking Apple's entry into the graphical user interface era."),
        Item000(imageName: "Motorola_68030_img", title: "Motorola 68030", releaseDate: "1987", products: "Macintosh II, Macintosh SE/30", coreNumber: "32-bit", frequency: "16-50MHz", process: "1.5µm", description: "The 68030 was used in later Macintosh models, offering improved performance and memory management capabilities."),
        Item000(imageName: "Motorola_68040_img", title: "Motorola 68040", releaseDate: "1991", products: "Macintosh Quadra Series", coreNumber: "32-bit", frequency: "25-40MHz", process: "0.8µm", description: "The 68040 was a high-performance processor used in the Macintosh Quadra series, known for its integrated FPU and enhanced speed.")
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
            .navigationTitle("Motorola Chips")
        }
    }
}

#Preview {
    MotorolaDetailView()
}
