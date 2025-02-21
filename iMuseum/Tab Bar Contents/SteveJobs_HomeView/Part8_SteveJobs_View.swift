//
//  Part8_SteveJobs_View.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/19.
//

import SwiftUI

struct Part8_SteveJobs_View: View {
    @Binding var fontSize: Double
    @State private var showText = [false, false]
    
    let paragraphs: [(title: String, content: String, imageName: String?)] = [
        (
            title: "1. Core Values",
            content: """
            Jobs always believed that the journey was the reward, that the journey was more important than the result. He pursues extreme design, great user experience, and disruptive technological innovation.
            """,
            imageName: nil
        ),
        (
            title: "2. Influences",
            content: """
            Steve Jobs not only built Apple as a great technology company, but also changed many industries through Pixar, NeXT and other projects, leaving a lasting spiritual wealth.
            """,
            imageName: nil
        )
    ]
    
    var body: some View {
        BaseLayoutView(
            title: "Beliefs that\nchange the world",
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
