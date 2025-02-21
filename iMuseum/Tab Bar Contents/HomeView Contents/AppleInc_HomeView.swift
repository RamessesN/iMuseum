//
//  AppleInc_HomeView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/8.
//

import SwiftUI

struct AppleIncView: View {
    @StateObject private var audioManager = AudioPlayerManager()
    @State private var currentPage = 0
    @State private var fontSize: Double = 23
    @State private var showSwipeHint = true
    
    private let totalPages = 6
    
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    
    @State private var isAutoScrolling = true
    
    var body: some View {
        ZStack {
            Image("Background_Star_img")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
                .opacity(0.5)
            
            TabView(selection: $currentPage) {
                OpeningAnimation_View()
                    .tag(0)
                
                Introduction_AppleInc_View(fontSize: $fontSize)
                    .tag(1)
                
                Part1_AppleInc_View(fontSize: $fontSize)
                    .tag(2)
                
                Part2_AppleInc_View(fontSize: $fontSize)
                    .tag(3)
                
                Part3_AppleInc_View(fontSize: $fontSize)
                    .tag(4)
                
                Part4_AppleInc_View(fontSize: $fontSize)
                    .tag(5)
                
                Conclusion_AppleInc_View(fontSize: $fontSize)
                    .tag(6)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .edgesIgnoringSafeArea(.all)
            .animation(.easeInOut(duration: 0.3), value: currentPage)
            .onReceive(timer) { _ in
                if isAutoScrolling && currentPage == 0 {
                    withAnimation {
                        currentPage = 1
                        isAutoScrolling = false
                    }
                }
            }
            
            if showSwipeHint && currentPage == 1 {
                SwipeHintView {
                    VStack {
                        Text("Swipe to Continue")
                            .font(.system(size: 23, weight: .bold, design: .rounded))
                            .foregroundColor(Color(UIColor.systemBackground))
                        
                        HStack {
                            Image(systemName: "arrowshape.left.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color(UIColor.systemBackground))
                            
                            Text("or")
                                .font(.system(size: 23, weight: .bold, design: .rounded))
                                .foregroundColor(Color(UIColor.systemBackground))
                            
                            Image(systemName: "arrowshape.right.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color(UIColor.systemBackground))
                        }
                    }
                }
            }
        }
        .toolbar(.hidden, for: .tabBar)
        .onAppear {
            audioManager.playBackgroundMusic(named: "Chopin_Waltz_bgm", withExtension: "mp3")
        }
        .onDisappear {
            audioManager.stopBackgroundMusic()
        }
    }
}
