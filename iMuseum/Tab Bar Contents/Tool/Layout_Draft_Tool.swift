//
//  Layout_Draft_Tool.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/18.
//

import SwiftUI

struct TitleView: View {
    var title: String
    var fontSize: Double
    var fontName: String = "Times New Roman"
    
    var body: some View {
        Text(title)
            .font(.custom(fontName, size: fontSize + 10))
            .fontWeight(.bold)
            .foregroundColor(Color(UIColor.label))
            .multilineTextAlignment(.center)
    }
}
struct ParagraphView: View {
    var paragraphs: [(title: String, content: String, imageName: String?)]
    @Binding var showText: [Bool]
    var fontSize: Double
    var alignment: TextAlignment = .leading
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(0..<paragraphs.count, id: \.self) { index in
                    if index < showText.count {
                        VStack(alignment: .center, spacing: 5) {
                            Text(paragraphs[index].title)
                                .font(.system(size: fontSize + 2, weight: .semibold))
                                .foregroundColor(Color(UIColor.label))
                                .multilineTextAlignment(.center)
                            
                            Text(paragraphs[index].content)
                                .font(.system(size: fontSize))
                                .foregroundColor(Color(UIColor.label))
                                .multilineTextAlignment(alignment)
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(nil)
                                .padding(.horizontal, 20)
                            
                            if let imageName = paragraphs[index].imageName {
                                Image(imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 200)
                                    .cornerRadius(10)
                                    .padding(.horizontal, 20)
                            }
                        }
                        .opacity(showText[index] ? 1 : 0)
                        .offset(y: showText[index] ? 0 : 10)
                        .animation(.easeInOut(duration: 0.8).delay(Double(index) * 0.6), value: showText[index])
                    }
                }
            }
            .padding(.vertical)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(UIColor.systemBackground))
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
            )
            .padding(.horizontal, 20)
        }
    }
}

struct BaseLayoutView<Content: View>: View {
    var title: String
    @Binding var fontSize: Double
    var content: Content
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                    .frame(height: 20)
                
                TitleView(title: title, fontSize: fontSize)
                
                Spacer()
                    .frame(height: 5)
                
                content
                    .frame(maxHeight: UIScreen.main.bounds.height * 0.66)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            VStack {
                Spacer()
                
                FontSizeControlView(fontSize: $fontSize)
                    .padding(.bottom, 10)
            }
        }
    }
}
