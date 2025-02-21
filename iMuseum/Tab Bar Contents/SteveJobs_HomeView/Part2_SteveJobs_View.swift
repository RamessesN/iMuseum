//
//  Part2_SteveJobs_View.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/15.
//

import SwiftUI

struct Part2_SteveJobs_View: View {
    @Binding var fontSize: Double
    @State private var showText = [false, false]
    
    let paragraphs: [(title: String, content: String, imageName: String?)] = [
        (
            title: "1. GUI and Mouse",
            content: """
            After visiting Xerox LABS, Jobs introduced the graphical user interface (GUI) and the mouse to the personal computer, lowering the barrier to access and ushering in a new era of intuitive operation.
            """,
            imageName: "GUI_img"
        ),
        (
            title: "2. Macintosh",
            content: """
            It was released in 1984, equipped with a graphical interface and a mouse. It was the first to realize the drag and stack functions, and defined the shortcut keys such as 'Ctrl + C' and 'Ctrl + V'. Although it failed due to performance issues, its innovative ideas had a profound impact.
            """,
            imageName: "Macintosh_img"
        )
    ]
    
    var body: some View {
        BaseLayoutView(
            title: "GUI and Macintosh",
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
