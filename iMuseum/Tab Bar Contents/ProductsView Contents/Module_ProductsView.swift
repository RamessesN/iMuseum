//
//  Module_ProductsView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/8.
//

import SwiftUI

struct Module_ProductsView: View {
    var title: String
    var imageName: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
                .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 3)

            HStack(spacing: 12) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.accentColor)

                VStack(alignment: .leading) {
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.black)
                }
                Spacer()
            }
            .padding()
        }
        .frame(height: 80)
    }
}

#Preview {
    Module_ProductsView(title: "Apple", imageName: "apple.logo")
}
