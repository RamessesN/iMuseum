//
//  Part4_AppleInc_View.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/15.
//

import SwiftUI

struct Part4_AppleInc_View: View {
    @Binding var fontSize: Double
    @State private var showText = [false, false]
    
    let paragraphs: [(title: String, content: String, imageName: String?)] = [
        (
            title: "1. The iPad and the Expansion of the Ecosystem",
            content: """
            In 2010, Apple launched the iPad, creating a new category for tablet computers. The iPad not only became a productivity tool but also further expanded Apple’s ecosystem. Meanwhile, through products like iCloud and Apple Watch, Apple built a seamlessly connected network of smart devices.
            """,
            imageName: "iPadAndJobs_img"
        ),
        (
            title: "2. Tim Cook’s Era of Globalization",
            content: """
            After Steve Jobs’ passing, Tim Cook took over as CEO. Under his leadership, Apple continued to expand its global market, launching innovative products such as Apple Pay, AirPods, and the M-series chips. Cook placed a strong emphasis on supply chain management and environmental responsibility, making Apple a company with greater social responsibility.
            """,
            imageName: "TimCook_img"
        )
    ]
    
    var body: some View {
        BaseLayoutView(
            title: "Continuation in the \nPost-Jobs Era",
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
