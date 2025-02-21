//
//  Chip_HomeView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/8.
//

import SwiftUI

struct HomeView: View {
    let modules = [
        ("Apple Inc.", "Apple_img", "Apple's history: From the garage to leading the world."),
        ("Chip", "Chip_img", "The evolution of Apple Chips: the process of becoming self-sustaining."),
        ("Steve Jobs", "Steve_img", "Visionary co-founder of Apple, revolutionizing the tech industry."),
        ("Apple\nIntelligence", "AI_img", "State-of-the-art AI solutions integrated into Apple's ecosystem.")
    ]
    
    @State private var selectedModule: (String, String, String)?
    @State private var showPreviewSheet = false
    @State private var showShareSheet = false
    @State private var shareContent: [Any] = []
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(modules, id: \.0) { module in
                        Module_HomeView(title: module.0, backgroundName: module.1)
                            .onTapGesture {
                                navigationPath.append(module.0)
                            }
                            .contextMenu {
                                Button(action: {
                                    selectedModule = module
                                    showPreviewSheet.toggle()
                                }) {
                                    Label("View Details", systemImage: "eye")
                                }
                                
                                Button(action: {
                                    prepareShareContent(for: module)
                                    showShareSheet.toggle()
                                }) {
                                    Label("Share", systemImage: "square.and.arrow.up")
                                }
                            }
                    }
                }
                .padding()
            }
            .navigationTitle("Home")
            .navigationDestination(for: String.self) { title in
                destination_HomeView(for: title)
            }
            .sheet(isPresented: $showPreviewSheet) {
                if let selectedModule = selectedModule {
                    PreviewView(title: selectedModule.0, imageName: selectedModule.1, description: selectedModule.2)
                }
            }
            .sheet(isPresented: $showShareSheet) {
                ShareSheet(activityItems: shareContent)
            }
        }
    }
    
    @ViewBuilder
    private func destination_HomeView(for title: String) -> some View {
        switch title {
        case "Apple Inc.":
            AppleIncView()
        case "Chip":
            ChipView()
        case "Steve Jobs":
            SteveJobsView()
        case "Apple\nIntelligence":
            AIView()
        default:
            HomeView()
        }
    }
    
    private func prepareShareContent(for module: (String, String, String)) {
        let title = module.0
        let description = module.2
        let imageName = module.1
        
        let text = "\(title)\n\n\(description)"
        
        if let image = UIImage(named: imageName) {
            shareContent = [text, image]
        } else {
            shareContent = [text]
        }
    }
}

struct PreviewView: View {
    let title: String
    let imageName: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 300)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 5, x: 0, y: 2)
            
            Text(title)
                .font(.title)
                .bold()
            
            Text(description)
                .font(.body)
                .foregroundColor(.secondary)
                .lineLimit(3)
                .fixedSize(horizontal: false, vertical: true)
            
            Spacer()
        }
        .padding()
        .background(Color(UIColor.systemBackground))
        .presentationDetents([.medium, .large])
    }
}

struct ShareSheet: UIViewControllerRepresentable {
    var activityItems: [Any]
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}

#Preview {
    HomeView()
}
