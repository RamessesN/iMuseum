//
//  Part1_SteveJobs_View.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/15.
//

import SwiftUI

struct Part1_SteveJobs_View: View {
    @Binding var fontSize: Double
    @State private var showText: [Bool]
    
    let paragraphs = [
        (
            title: "1. Beginning",
            content: """
            Jobs and Woz were inspired to design their own Computer in the 1970s at the Homebrew Computer Club.
            """,
            imageName: "Homebrew_img"
        ),
        (
            title: "2. Apple I",
            content: """
            They sold off their personal assets (Jobs sold the VW van, Woz sold the HP-65 calculator) and used $1,500 to start Apple, which launched its first product, the Apple I. Jobs came up with the "keyboard + display" design concept that laid the foundation for the modern personal computer.
            """,
            imageName: "Apple_1_img"
        ),
        (
            title: "3. Apple II ",
            content: """
            It improved the power supply, case design, and added a disk drive and software ecosystem (e.g. VisiCalc). It became the world's first successful personal computer, selling more than 6 million units, and ushered in the personal computer era.
            """,
            imageName: "Apple_2_img"
        )
    ]
    
    init(fontSize: Binding<Double>) {
        self._fontSize = fontSize
        self._showText = State(initialValue: [Bool](repeating: false, count: paragraphs.count))
    }
    
    var body: some View {
        BaseLayoutView(
            title: "The Birth of Apple",
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
