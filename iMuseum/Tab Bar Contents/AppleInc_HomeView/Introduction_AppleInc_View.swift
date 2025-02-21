//
//  Introduction_AppleInc_View.swift
//  Apple History
//
//  Created by 赵禹惟 on 2025/2/15.
//

import SwiftUI

struct Introduction_AppleInc_View: View {
    @Binding var fontSize: Double
    @State private var showText = [false, false, false, false]
    
    let paragraphs: [(title: String, content: String, imageName: String?)] = [
        (
            title: "",
            content: "The story of Apple is an epic of innovation, perseverance, and dreams.",
            imageName: nil
        ),
        (
            title: "",
            content: "From a garage startup to becoming the world's most influential technology company, Apple's success is inseparable from Steve Jobs' vision and the collective efforts of the team.",
            imageName: nil
        ),
        (
            title: "",
            content: "As Steve Jobs once said, 'The journey is the reward.'",
            imageName: nil
        ),
        (
            title: "",
            content: "Apple's story teaches us that no matter how difficult the road ahead may be, as long as we hold on to our dreams, we can create miracles.",
            imageName: nil
        )
    ]
    
    var body: some View {
        BaseLayoutView(
            title: "Introduction",
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
