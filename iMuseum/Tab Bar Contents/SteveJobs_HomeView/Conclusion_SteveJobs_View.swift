//
//  Conclusion_SteveJobs_View.swift
//  Apple History
//
//  Created by 赵禹惟 on 2025/2/19.
//

import SwiftUI

struct Conclusion_SteveJobs_View: View {
    @Binding var fontSize: Double
    @State private var showText = [false, false, false, false]
    
    let paragraphs: [(title: String, content: String, imageName: String?)] = [
        (
            title: "",
            content: "Steve Jobs's life has been full of ups and downs, from founding Apple to being ousted, to returning and leading Apple to greatness.",
            imageName: nil
        ),
        (
            title: "",
            content: "He explained what is the 'never compromise' spirit of innovation with practical actions.",
            imageName: nil
        ),
        (
            title: "",
            content: "His story tells us that true greatness lies not in short-term success, but in the courage to continue to explore unknown areas and push the limits.",
            imageName: nil
        ),
        (
            title: "",
            content: "Just as he said, 'Stay hungry, stay foolish.'",
            imageName: nil
        )
    ]
    
    var body: some View {
        BaseLayoutView(
            title: "Conclusion",
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
