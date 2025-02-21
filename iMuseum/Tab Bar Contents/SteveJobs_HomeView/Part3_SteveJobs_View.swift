//
//  Part3_SteveJobs_View.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/19.
//

import SwiftUI

struct Part3_SteveJobs_View: View {
    @Binding var fontSize: Double
    @State private var showText = [false, false]
    
    let paragraphs: [(title: String, content: String, imageName: String?)] = [
        (
            title: "1. NeXT",
            content: """
            After being kicked out of Apple, Steve Jobs founded NeXT, a computer company that pursued extreme product aesthetics and technological breakthroughs, but suffered from poor sales due to high prices and poor performance. However, the NeXTSTEP operating system later became a precursor to MacOS and iOS.
            """,
            imageName: "NeXTSTEP_img"
        ),
        (
            title: "2. Pixar",
            content: """
            With the acquisition of Lucasfilm's animation division, Jobs gradually relinquished control and gave his team creative freedom. Pixar, the creator of classic animated films such as Toy Story, was eventually acquired by Disney for $4.1 billion, another high point in Jobs' career.
            """,
            imageName: "Pixar_img"
        )
    ]
    
    var body: some View {
        BaseLayoutView(
            title: "NeXT and Pixar",
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
