//
//  Part6_SteveJobs_View.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/19.
//

import SwiftUI

struct Part6_SteveJobs_View: View {
    @Binding var fontSize: Double
    @State private var showText = [false, false]
    
    let paragraphs: [(title: String, content: String, imageName: String?)] = [
        (
            title: "1. 1st iPhone",
            content: """
            Launched in 2007, it integrates multi-touch screen, iOS operating system, App Store, ARM architecture chip and a variety of sensors, redefines smart phones and opens the era of mobile Internet.
            """,
            imageName: "iPhone_1st_img"
        ),
        (
            title: "2. Five Elements of Innovation",
            content: """
            - Multi-touch: Ditch the stylus and use your hands directly on the screen.
            - iOS: Smooth and dynamic operating experience.
            - App Store: Build a developer ecosystem and enrich application content.
            - ARM architecture chip: lay the development direction of future mobile phone chip.
            - Built-in sensors: improve user experience and solve problems such as false touch.
            """,
            imageName: nil
        )
    ]
    
    var body: some View {
        BaseLayoutView(
            title: "Mobile Internet Revolution\n- iPhone",
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
