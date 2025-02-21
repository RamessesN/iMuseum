//
//  TabBar.swift
//  Apple History
//
//  Created by 赵禹惟 on 2025/2/20.
//

import SwiftUI

// Tab Bar Setting
struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    tabLabel("Home", systemImage: "house.fill")
                }
                .tag(0)
            ProductsView()
                .tabItem {
                    tabLabel("Products", systemImage: "macbook.and.iphone")
                }
                .tag(1)
            SearchView()
                .tabItem {
                    tabLabel("Search", systemImage: "magnifyingglass")
                }
                .tag(2)
        }
        .tint(.blue)
        .background(.ultraThinMaterial)
    }

    private func tabLabel(_ text: String, systemImage: String) -> some View {
        VStack {
            Image(systemName: systemImage)
            Text(text)
                .font(.headline)
        }
    }
}

#Preview {
    MainTabView()
}
