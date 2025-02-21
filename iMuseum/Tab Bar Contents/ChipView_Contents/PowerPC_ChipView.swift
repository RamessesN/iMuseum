//
//  PowerPC_ChipView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/13.
//

import SwiftUI

struct Item_PowerPC: Identifiable {
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

struct PowerPCDetailView: View {
    let items = [
        Item_PowerPC(imageName: "PowerPC_601_img", title: "PowerPC 601", releaseDate: "1994", products: "Power Macintosh, iMac (Early Models)", coreNumber: "1-core", frequency: "60-80MHz", process: "0.6µm", description: "The first PowerPC processor used in Apple's Macintosh computers, marking the transition from Motorola 68k architecture."),
        Item_PowerPC(imageName: "PowerPC_G3_img", title: "PowerPC G3", releaseDate: "1997", products: "iMac G3, PowerBook G3, Power Macintosh G3", coreNumber: "1-core", frequency: "233-500MHz", process: "0.25µm", description: "Known for its 'G3' branding, this processor brought significant performance improvements and helped Apple recover financially during a challenging time."),
        Item_PowerPC(imageName: "PowerPC_G4_img", title: "PowerPC G4", releaseDate: "1999", products: "iBook, PowerBook G4, Power Mac G4", coreNumber: "1-core", frequency: "350-1.7GHz", process: "0.18µm", description: "Introduced the Velocity Engine for multimedia acceleration, making it competitive against Intel processors at the time."),
        Item_PowerPC(imageName: "PowerPC_G5_img", title: "PowerPC G5", releaseDate: "2003", products: "Power Mac G5, iMac G5", coreNumber: "1-2 cores", frequency: "1.6-2.7GHz", process: "0.13µm", description: "The last PowerPC processor used by Apple, known for its high clock speeds but also thermal challenges, leading to Apple's eventual switch to Intel.")
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
            .navigationTitle("PowerPC Chips")
        }
    }
}

#Preview {
    PowerPCDetailView()
}
