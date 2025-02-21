//
//  Part3_AppleInc_View.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/15.
//

import SwiftUI

struct Part3_AppleInc_View: View {
    @Binding var fontSize: Double
    @State private var showText = [false, false]
    
    let paragraphs: [(title: String, content: String, imageName: String?)] = [
        (
            title: "1. The Revolution of iPod and iTunes",
            content: """
            Entering the 21st century, Steve Jobs realized that digital music would be the trend of the future. The release of the iPod completely revolutionized the music player market, while iTunes pioneered the online purchase of legal music. The iPod was not just a hardware product, but also a crucial part of the Apple ecosystem.
            """,
            imageName: "iTunes_img"
        ),
        (
            title: "2. The Birth of the iPhone",
            content: """
            In 2007, Jobs introduced the groundbreaking product — iPhone. This phone integrated five core elements: multitouch technology, the iOS operating system, the App Store, ARM architecture chips, and more. The iPhone set the standard for modern smartphones, marking the dawn of the mobile internet era.
            """,
            imageName: "iPhoneAndJobs_img"
        )
    ]
    
    var body: some View {
        BaseLayoutView(
            title: "Pioneers of the Mobile Internet Era",
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
