//
//  Chip_HomeView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/8.
//

import SwiftUI

struct HistoryEvent: Identifiable {
    var id = UUID()
    var year: String
    var number: String
    var title: String
    var description: String
}

struct TimelineItem: View {
    let event: HistoryEvent
    let index: Int
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            if index % 2 != 0 {
                Spacer()
                eventContent(isRightAligned: false)
                timelineDot
                yearLabel
            } else {
                yearLabel
                timelineDot
                eventContent(isRightAligned: true)
                Spacer()
            }
        }
    }
    
    private var timelineDot: some View {
        Image(systemName: index % 2 == 0 ? "arrowshape.right.fill" : "arrowshape.left.fill")
            .font(.system(size: 25, weight: .heavy))
            .foregroundColor(.accentColor)
            .frame(width: 30, height: 30)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 2)
    }
    
    private var yearLabel: some View {
        Text(event.year)
            .font(.system(size: 40, weight: .bold))
            .foregroundColor(.accentColor)
            .frame(width: 130, alignment: index % 2 == 0 ? .trailing : .leading)
    }
    
    private func eventContent(isRightAligned: Bool) -> some View {
        VStack(alignment: isRightAligned ? .leading : .trailing, spacing: 5) {
            Text(event.number)
                .font(.headline)
                .foregroundColor(.gray)
            
            VStack(alignment: .leading) {
                Text(event.title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Text(event.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.white)
                    .shadow(color: .black.opacity(0.1), radius: 5, y: 2)
            )
        }
        .frame(maxWidth: 280, alignment: isRightAligned ? .trailing : .leading)
    }
}

struct ChipView: View {
    let events = [
        HistoryEvent(year: "1970s", number: "No.1", title: "MOS 6502", description: "MOS Tech."),
        HistoryEvent(year: "1980s", number: "No.2", title: "Motorola 68K Series", description: "Motorola"),
        HistoryEvent(year: "1990s", number: "No.3", title: "PowerPC", description: "IBM + Motorola + Apple"),
        HistoryEvent(year: "2000s", number: "No.4", title: "x86 / x86_64", description: "Intel"),
        HistoryEvent(year: "2010s", number: "No.5", title: "'A' Series", description: "Apple"),
        HistoryEvent(year: "2020s", number: "No.6", title: "'M' Series", description: "Apple")
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack(alignment: .top) {
                    Rectangle()
                        .frame(width: 7)
                        .foregroundColor(.gray)
                        .edgesIgnoringSafeArea(.all)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.top, 35)
                        
                    VStack(spacing: 0) {
                        ForEach(events.indices, id: \.self) { index in
                            NavigationLink(destination: self.detailView(for: events[index])) {
                                TimelineItem(event: events[index], index: index)
                                    .padding(.vertical, 20)
                                    .padding(.horizontal, 20)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    SwipeHintView(message: "Tap to Check more", imageName: "hand.tap.fill")
                        .padding(.vertical, 180)
                }
                .toolbar(.hidden, for: .tabBar) 
            }
            .navigationTitle("Chip History")
            .background(Color(UIColor.clear))
        }
    }
    
    private func detailView(for event: HistoryEvent) -> some View {
        switch event.title {
        case "MOS 6502":
            return AnyView(MOS6502DetailView())
        case "Motorola 68K Series":
            return AnyView(MotorolaDetailView())
        case "PowerPC":
            return AnyView(PowerPCDetailView())
        case "x86 / x86_64":
            return AnyView(X86DetailView())
        case "'A' Series":
            return AnyView(ASeriesDetailView())
        case "'M' Series":
            return AnyView(MSeriesDetailView())
        default:
            return AnyView(ChipView())
        }
    }
}

#Preview {
    ChipView()
}
