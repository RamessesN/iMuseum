//
//  Part1_AppleInc_View.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/15.
//

import SwiftUI

struct Part1_AppleInc_View: View {
    @Binding var fontSize: Double
    @State private var showText = [false, false]
    
    let paragraphs: [(title: String, content: String, imageName: String?)] = [
        (
            title: "1. The Entrepreneurial Dream of the Two Steves",
            content: """
            In the 1970s, on the West Coast of the United States in Silicon Valley, a club called the Homebrew Computer Club brought together a group of young technology enthusiasts. Among them, Steve Jobs and Steve Wozniak looked down on the then-popular Altair 8800 computer. They believed that computers should be more user-friendly and accessible. To fund their vision, Wozniak sold his HP-65 calculator, and Jobs sold his Volkswagen van, raising $1,500 to start Apple Inc. Their goal was to make computers personal consumer products rather than just business tools.
            """,
            imageName: "SteveAndWoz_img"
        ),
        (
            title: "2. The Birth of Apple I and Apple II",
            content: """
            Apple I was Apple’s first computer. Although its performance was limited, it introduced keyboard input and screen output, lowering the barrier to use. Following this, Apple II became a true personal computer, featuring a switching power supply, disk drive, and graphical interface. The success of Apple II established the “computer + keyboard + display” combination as the classic form of personal computers, ushering in the era of personal computing.
            """,
            imageName: "AppleGarage_img"
        )
    ]
    
    var body: some View {
        BaseLayoutView(
            title: "The Birth and Early Glory",
            fontSize: $fontSize,
            content: ParagraphView(
                paragraphs: paragraphs,
                showText: $showText,
                fontSize: fontSize
            )
        )
        .onAppear {
            for i in 0..<showText.count {
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) * 0.6) {
                    showText[i] = true
                }
            }
        }
    }
}
