//
//  MOS_ChipView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/13.
//

import SwiftUI

struct Item4: Identifiable {
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

struct MOS6502DetailView: View {
    let items = [
        Item4(imageName: "MOS6502_img", title: "MOS 6502", releaseDate: "1975", products: "Apple I, Apple II", coreNumber: "8-bit", frequency: "1MHz - 2MHz", process: "8µm", description: "The first microprocessor used in Apple computers, designed by MOS Technology. It powered the Apple I and Apple II.")
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
                                    .frame(width: 115, height: 100)
                                
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
            .navigationTitle("MOS Chips")
        }
    }
}

#Preview {
    MOS6502DetailView()
}
