//
//  FontSize_Tool.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/15.
//

import SwiftUI

struct FontSizeControlView: View {
    @Binding var fontSize: Double
    
    var body: some View {
        HStack {
            Text("Font Size")
                .font(.system(size: 18))
                .foregroundColor(Color(UIColor.secondaryLabel))
            
            Spacer()
            
            Button(action: {
                if fontSize > 10 { fontSize -= 1 }
            }) {
                Text("A-")
                    .font(.system(size: 23, weight: .bold))
                    .foregroundColor(Color(UIColor.label))
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(UIColor.secondarySystemFill))
                            .frame(width: 60, height: 35)
                            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 2)
                    )
            }
            
            Spacer()
            
            Text("\(Int(fontSize))")
                .font(.system(size: 18))
                .foregroundColor(Color(UIColor.secondaryLabel))
            
            Spacer()
            
            Button(action: {
                if fontSize < 30 { fontSize += 1 }
            }) {
                Text("A+")
                    .font(.system(size: 23, weight: .bold))
                    .foregroundColor(Color(UIColor.label))
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(UIColor.secondarySystemFill))
                            .frame(width: 60, height: 35)
                            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 2)
                    )
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(UIColor.systemBackground))
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
        )
        .frame(maxWidth: 360)
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

#Preview {
    FontSizeControlView(fontSize: .constant(18))
}
