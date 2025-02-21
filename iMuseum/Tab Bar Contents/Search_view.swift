//
//  Search_view.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/20.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    // Searching Library
    let items = ["Apple Inc.", "Chip", "Steve Jobs", "iPhone", "Mac", "MOS", "Apple I", "Apple Intelligence", "iPad", "A-Series Chips", "M-Series Chips", "Motorola Chips", "PowerPC Chips", "Intel Chips", "Apple TV", "Vision Pro", "Apple Watch"]
    
    // Used to display
    let defaultItems = ["Apple Inc.", "Steve Jobs", "Chip", "iPhone", "Mac", "MOS", "Apple I", "Apple Intelligence"]
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    TextField("Search", text: $searchText)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.vertical, 8)
                }
                .padding(.horizontal)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)
                
                Spacer()
                    .frame(height: 30)
                
                List {
                    ForEach(filteredItems, id: \.self) { item in
                        NavigationLink(destination: destinationView(for: item)) {
                            Text(item)
                        }
                    }
                }
                .listStyle(PlainListStyle())
                .padding(.horizontal, 16)
            }
            .padding()
            .navigationTitle("Search")
        }
    }
    
    var filteredItems: [String] {
        if searchText.isEmpty {
            return defaultItems
        } else {
            return items.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    @ViewBuilder
    func destinationView(for item: String) -> some View {
            switch item {
            case "Apple Inc.":
                AppleIncView()
            case "Chip":
                ChipView()
            case "Steve Jobs":
                SteveJobsView()
            case "iPhone":
                iPhoneView()
            case "Mac":
                MacView()
            case "MOS":
                MOS6502DetailView()
            case "Apple I":
                MacView()
            case "Apple Intelligence":
                AIView()
            case "iPad":
                iPadView()
            case "A-Series Chips":
                ASeriesDetailView()
            case "M-Series Chips":
                MSeriesDetailView()
            case "Motorola Chips":
                MotorolaDetailView()
            case "PowerPC Chips":
                PowerPCDetailView()
            case "Intel Chips":
                X86DetailView()
            case "Apple TV":
                tvView()
            case "Vision Pro":
                VisionView()
            case "Apple Watch":
                WatchView()
            default:
                SearchView()
        }
    }
}

#Preview {
    SearchView()
}
