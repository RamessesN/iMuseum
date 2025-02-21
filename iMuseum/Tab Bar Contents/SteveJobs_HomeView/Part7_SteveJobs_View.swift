//
//  Part7_SteveJobs_View.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/19.
//

import SwiftUI

struct Part7_SteveJobs_View: View {
    @Binding var fontSize: Double
    @State private var showText = [false, false]
    
    let paragraphs: [(title: String, content: String, imageName: String?)] = [
        (
            title: "1. Pain and Thought",
            content: """
            Since 2004, Jobs had undergone repeated surgery for pancreatic cancer and was in declining health. He began to reflect on his life and put more energy into the development of the iPhone, seeing it as the last work in his life.
            """,
            imageName: "ElderSteve_img"
        ),
        (
            title: "2. Time to Say Goodbye",
            content: """
            Steve Jobs died on October 5, 2011, at the age of 56. His legacy has inspired countless people, and Apple executives, including Cook, continue to carry on his innovative ideas.
            """,
            imageName: "SteveWholeLife_img"
        )
    ]
    
    var body: some View {
        BaseLayoutView(
            title: "The End of Life\n- Spiritual Heritage",
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
