//
//  Part4_SteveJobs_View.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/19.
//

import SwiftUI

struct Part4_SteveJobs_View: View {
    @Binding var fontSize: Double
    @State private var showText = [false, false]
    
    let paragraphs: [(title: String, content: String, imageName: String?)] = [
        (
            title: "1. Return to Apple",
            content: """
            In 1997, Apple was in trouble, with just 4% of the market. Steve Jobs returned as interim CEO, reorganized the board, streamlined the product line, and focused on four core products (iMac, Power Mac, iBook, and PowerBook).
            """,
            imageName: nil
        ),
        (
            title: "2. Think Different",
            content: """
            Launch the classic slogan "Think Different" to rebuild the brand image and gather staff morale.
            """,
            imageName: "ThinkDifferent_img"
        ),
        (
            title: "3. iMac G3",
            content: """
            Introducing the revolutionary translucent color all-in-one iMac G3, it set a trend in industrial design and helped propel Apple back to profitability.
            """,
            imageName: "imac_g3_1998_img"
        )
    ]
    
    var body: some View {
        BaseLayoutView(
            title: "Bailing out\nthe Failing Giant",
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
