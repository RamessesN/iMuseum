//
//  Steve_HomeView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/8.
//

import SwiftUI

struct SteveJobsView: View {
    @StateObject private var audioManager = AudioPlayerManager()
    @State private var currentPage = 0
    @State private var fontSize: Double = 23
    @State private var showSwipeHint = true
    
    private let totalPages = 10
    
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    
    @State private var isAutoScrolling = true
    
    var body: some View {
        ZStack {
            Image("Background_Glacier_img")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
                .opacity(0.5)
            
            TabView(selection: $currentPage) {
                Introduction_SteveJobs_View()
                    .tag(0)
                
                Part1_SteveJobs_View(fontSize: $fontSize)
                    .tag(1)
                
                Part2_SteveJobs_View(fontSize: $fontSize)
                    .tag(2)
                
                Part3_SteveJobs_View(fontSize: $fontSize)
                    .tag(3)
                
                Part4_SteveJobs_View(fontSize: $fontSize)
                    .tag(4)
                
                Part5_SteveJobs_View(fontSize: $fontSize)
                    .tag(5)
                
                Part6_SteveJobs_View(fontSize: $fontSize)
                    .tag(6)
                
                Part7_SteveJobs_View(fontSize: $fontSize)
                    .tag(7)
                
                Part8_SteveJobs_View(fontSize: $fontSize)
                    .tag(8)
                
                Conclusion_SteveJobs_View(fontSize: $fontSize)
                    .tag(9)
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
            audioManager.playBackgroundMusic(named: "Chopin_Night_bgm", withExtension: "mp3")
        }
        .onDisappear {
            audioManager.stopBackgroundMusic()
        }
    }
}
