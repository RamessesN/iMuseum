//
//  Part2_AppleInc_View.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/15.
//

import SwiftUI

struct Part2_AppleInc_View: View {
    @Binding var fontSize: Double
    @State private var showText = [false, false]
    
    let paragraphs: [(title: String, content: String, imageName: String?)] = [
        (
            title: "1. Jobs’ Departure and the Rise of NeXT",
            content: """
            Although Apple II was a huge success, Apple gradually lost market share when facing competitors like IBM. Due to internal conflicts, Steve Jobs was ousted from the company and began his second entrepreneurial journey with NeXT. While NeXT struggled with poor hardware sales, its operating system NeXTSTEP became the foundation for what would later evolve into macOS and iOS.
            At the same time, Jobs acquired Pixar Animation Studios and transformed it into a world-class animation company. The success of Toy Story not only made Jobs a vast fortune but also taught him the importance of empowering management.
            """,
            imageName: "NeXTInc_img"
        ),
        (
            title: "2. Returning to Apple: Jobs’ Revival Plan",
            content: """
            In 1997, with Apple on the verge of bankruptcy, Jobs was invited to return. He quickly took action, reorganized the board, streamlined the product line, and launched the “Think Different” advertising campaign to rebuild the brand’s image. The release of the iMac G3, with its translucent design and vibrant colors, shocked the world and helped Apple regain its footing.
            """,
            imageName: nil
        )
    ]
    
    var body: some View {
        BaseLayoutView(
            title: "The Valley and Rebirth",
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
