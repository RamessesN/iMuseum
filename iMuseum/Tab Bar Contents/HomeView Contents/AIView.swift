//
//  AI_HomeView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/13.
//

import SwiftUI

struct AIView: View {
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ScrollView {
                    VStack(alignment: .leading, spacing: 40) {
                        VStack(alignment: .leading, spacing: 20) {
                            // Abstract
                            HStack {
                                Image(systemName: "text.document")
                                    .font(.title)
                                    .foregroundColor(.blue)
                                    .frame(width: 44)
                                
                                Text("Abstract")
                                    .font(.title2.bold())
                            }
                            
                            FeatureCard(
                                icon: "sparkles",
                                title: "Built into iPhone, iPad and Mac",
                                description: "Helping you write, express and get things done effortlessly."
                            )
                            
                            FeatureCard(
                                icon: "lock.shield",
                                title: "Privacy First",
                                description: "Draws on your personal context without allowing anyone else to access your data."
                            )
                        }
                        .padding(.horizontal)
                        
                        // Writing Tools
                        SectionView(
                            title: "Writing Tools",
                            icon: "doc.text.image",
                            description: "Summarize lectures, shorten group threads, and prioritize notifications with enhanced language capabilities.",
                            featureText: "Explore new features for writing, focus and communication"
                        )
                        
                        Image("Writing_img")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.8)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        // Visual Expression
                        SectionView(
                            title: "Visual Expression",
                            icon: "paintpalette",
                            description: "Create original images, Genmoji, and memory movies. Turn sketches into polished visuals with Image Wand.",
                            featureText: "Create expressive images and custom memory movies"
                        )
                        
                        Image("Expression_img")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.8)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        // Siri
                        SectionView(
                            title: "Siri Evolution",
                            icon: "waveform",
                            description: "New design with rich language understanding and personal context awareness. Type or speak naturally.",
                            featureText: "Discover a more capable, integrated Siri"
                        )
                        
                        Image("Siri_img")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.8)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        PrivacySection()
                        
                        IntegrationSection()
                        
                        DevicesSection()
                    }
                    .padding(.vertical, 40)
                    .navigationTitle("Apple Intelligence")
                }
                .background(Color(.systemGroupedBackground))
            }
            .toolbar(.hidden, for: .tabBar)
        }
    }
}

// FeatureCard design
struct FeatureCard: View {
    let icon: String
    let title: String
    let description: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            Image(systemName: icon)
                .font(.title)
                .foregroundColor(.blue)
                .frame(width: 44)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.headline)
                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 18, style: .continuous)
                .fill(Color(.secondarySystemGroupedBackground))
        )
    }
}

// SectionView design
struct SectionView: View {
    let title: String
    let icon: String
    let description: String
    let featureText: String
    
    var body: some View {
        VStack(spacing: 20) {
            Divider()
            
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Image(systemName: icon)
                        .font(.title)
                        .foregroundColor(.accentColor)
                    Text(title)
                        .font(.title2.bold())
                }
                
                Text(description)
                    .foregroundColor(.secondary)
                    .lineSpacing(6)
                
                Text(featureText)
                    .font(.headline)
                    .foregroundColor(Color(UIColor.label))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        Capsule()
                            .fill(Color.blue.opacity(0.1))
                    )
                    .overlay(
                            Capsule()
                                .stroke(Color.blue, lineWidth: 1)
                        )
            }
            .padding(.horizontal)
        }
    }
}

// Privacy
struct PrivacySection: View {
    var body: some View {
        VStack(spacing: 20) {
            Divider()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Privacy & Security")
                    .font(.title2.bold())
                
                HStack(alignment: .top, spacing: 20) {
                    Image(systemName: "iphone")
                        .font(.title)
                        .foregroundColor(.green)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("On-Device Processing")
                            .font(.headline)
                        Text("Your data stays on your device for personal intelligence features")
                            .foregroundColor(.secondary)
                    }
                }
                
                HStack(alignment: .top, spacing: 20) {
                    Image(systemName: "cloud")
                        .font(.title)
                        .foregroundColor(.blue)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Private Cloud Compute")
                            .font(.headline)
                        Text("Complex requests processed securely using Apple silicon servers")
                            .foregroundColor(.secondary)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

// ChatGPT
struct IntegrationSection: View {
    var body: some View {
        VStack(spacing: 20) {
            Divider()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("ChatGPT Integration")
                    .font(.title2.bold())
                
                HStack(spacing: 20) {
                    Image(systemName: "text.bubble")
                        .font(.title)
                        .foregroundColor(.green)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Seamless AI Collaboration")
                            .font(.headline)
                        Text("Access ChatGPT features directly in Siri and Writing Tools with privacy protection")
                            .foregroundColor(.secondary)
                    }
                }
            }
            .padding(.horizontal)
            
            Image("ChatGPT_img")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.8)
        }
    }
}

struct DevicesSection: View {
    var body: some View {
        VStack(spacing: 20) {
            Divider()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Supported Devices")
                    .font(.title2.bold())
                
                HStack {
                    VStack {
                        Image(systemName: "iphone")
                            .font(.largeTitle)
                        Text("iPhone 15 Pro+")
                            .font(.caption)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "ipad")
                            .font(.largeTitle)
                        Text("iPad Pro M1+")
                            .font(.caption)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "macbook")
                            .font(.largeTitle)
                        Text("Mac M1+")
                            .font(.caption)
                    }
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(.secondarySystemGroupedBackground))
                )
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    AIView()
}
