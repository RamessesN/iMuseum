//
//  Module_HomeView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/7.
//

import SwiftUI

struct Module_HomeView: View {
    var title: String
    var backgroundName: String

    var body: some View {
        ZStack {
            Image(backgroundName)
                .resizable()
                .scaledToFill()
                .frame(height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
            
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white.opacity(0.3))
                .frame(height: 150)
                .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 3)

            HStack(spacing: 12) {
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.system(size:25, weight: .bold))
                        .foregroundColor(.black)
                }
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .frame(height: 150)
        .contentShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    Module_HomeView(title: "TITLE", backgroundName: "BGN")
}
