//
//  Part5_SteveJobs_View.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/19.
//

import SwiftUI

struct Part5_SteveJobs_View: View {
    @Binding var fontSize: Double
    @State private var showText = [false, false]
    
    let paragraphs: [(title: String, content: String, imageName: String?)] = [
        (
            title: "1. iPod",
            content: """
            Launched in 2001, it revolutionized the music industry with its simple design, powerful storage (5GB for 1,000 songs), and the iTunes music store.
            """,
            imageName: "iPod_img"
        ),
        (
            title: "2. Less is More",
            content: """
            The iPod implemented a minimalist philosophy, eliminating physical buttons and using a touch dial to simplify human-computer interaction, which laid the groundwork for the iPhone.
            """,
            imageName: nil
        )
    ]
    
    var body: some View {
        BaseLayoutView(
            title: "Pioneers in the digital age\n- iPod and iTunes",
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
