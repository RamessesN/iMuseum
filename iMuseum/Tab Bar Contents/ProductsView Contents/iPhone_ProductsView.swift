//
//  iPhone_ProductsView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/8.
//

import SwiftUI

struct iPhoneView: View {
    @State private var isToolbarHidden = true
    
    let items = [
            // iPhone
            ProductItem(imageName: "iPhone_1st_img", title: "iPhone", releaseDate: "2007", screenSize: "3.5\"", resolution: "480x320", processor: "Samsung 32-bit RISC ARM11", camera: "2MP", description: "First-generation iPhone, introduced multi-touch and App Store."),
            
            // iPhone 3 Series
            ProductItem(imageName: "iPhone_3G_img", title: "iPhone 3G", releaseDate: "2008", screenSize: "3.5\"", resolution: "480x320", processor: "Samsung 32-bit RISC ARM11", camera: "2MP", description: "Added 3G support and GPS, launched the App Store."),
            ProductItem(imageName: "iPhone_3GS_img", title: "iPhone 3GS", releaseDate: "2009", screenSize: "3.5\"", resolution: "480x320", processor: "Samsung 32-bit ARM Cortex-A8", camera: "3MP", description: "Improved performance, video recording, and voice control."),
            
            // iPhone 4 Series
            ProductItem(imageName: "iPhone_4_img", title: "iPhone 4", releaseDate: "2010", screenSize: "3.5\"", resolution: "960x640", processor: "Apple A4", camera: "5MP", description: "Retina display, FaceTime, and glass design."),
            ProductItem(imageName: "iPhone_4S_img", title: "iPhone 4S", releaseDate: "2011", screenSize: "3.5\"", resolution: "960x640", processor: "Apple A5", camera: "8MP", description: "Introduced Siri, improved camera, and iCloud."),
            
            // iPhone 5 Series
            ProductItem(imageName: "iPhone_5_img", title: "iPhone 5", releaseDate: "2012", screenSize: "4\"", resolution: "1136x640", processor: "Apple A6", camera: "8MP", description: "Thinner design, LTE support, and larger screen."),
            ProductItem(imageName: "iPhone_5S_img", title: "iPhone 5S", releaseDate: "2013", screenSize: "4\"", resolution: "1136x640", processor: "Apple A7", camera: "8MP", description: "First 64-bit smartphone, Touch ID, and improved camera."),
            ProductItem(imageName: "iPhone_5c_img", title: "iPhone 5c", releaseDate: "2013", screenSize: "4\"", resolution: "1136x640", processor: "Apple A6", camera: "8MP", description: "Colorful polycarbonate design with iPhone 5 internals."),
            
            // iPhone 6 Series
            ProductItem(imageName: "iPhone_6_img", title: "iPhone 6", releaseDate: "2014", screenSize: "4.7\"", resolution: "1334x750", processor: "Apple A8", camera: "8MP", description: "Larger screen, thinner design, and NFC for Apple Pay."),
            ProductItem(imageName: "iPhone_6_Plus_img", title: "iPhone 6 Plus", releaseDate: "2014", screenSize: "5.5\"", resolution: "1920x1080", processor: "Apple A8", camera: "8MP", description: "Phablet-sized iPhone with optical image stabilization."),
            ProductItem(imageName: "iPhone_6S_img", title: "iPhone 6S", releaseDate: "2015", screenSize: "4.7\"", resolution: "1334x750", processor: "Apple A9", camera: "12MP", description: "3D Touch, improved camera, and stronger aluminum body."),
            ProductItem(imageName: "iPhone_6S_Plus_img", title: "iPhone 6S Plus", releaseDate: "2015", screenSize: "5.5\"", resolution: "1920x1080", processor: "Apple A9", camera: "12MP", description: "Larger variant with 3D Touch and OIS."),
            
            // iPhone SE 2016
            ProductItem(imageName: "iPhone_SE_img", title: "iPhone SE", releaseDate: "2016", screenSize: "4\"", resolution: "1136x640", processor: "Apple A9", camera: "12MP", description: "Compact design with 6S-level performance."),
            
            // iPhone 7 Series
            ProductItem(imageName: "iPhone_7_img", title: "iPhone 7", releaseDate: "2016", screenSize: "4.7\"", resolution: "1334x750", processor: "Apple A10 Fusion", camera: "12MP", description: "Water resistance, no headphone jack, improved camera."),
            ProductItem(imageName: "iPhone_7_Plus_img", title: "iPhone 7 Plus", releaseDate: "2016", screenSize: "5.5\"", resolution: "1920x1080", processor: "Apple A10 Fusion", camera: "12MP + 12MP", description: "Dual cameras with portrait mode."),
            
            // iPhone 8 Series
            ProductItem(imageName: "iPhone_8_img", title: "iPhone 8", releaseDate: "2017", screenSize: "4.7\"", resolution: "1334x750", processor: "Apple A11 Bionic", camera: "12MP", description: "Wireless charging, glass back, True Tone display."),
            ProductItem(imageName: "iPhone_8_Plus_img", title: "iPhone 8 Plus", releaseDate: "2017", screenSize: "5.5\"", resolution: "1920x1080", processor: "Apple A11 Bionic", camera: "12MP + 12MP", description: "Larger variant with enhanced camera features."),
            
            // iPhone X Series
            ProductItem(imageName: "iPhone_X_img", title: "iPhone X", releaseDate: "2017", screenSize: "5.8\"", resolution: "2436x1125", processor: "Apple A11 Bionic", camera: "12MP + 12MP", description: "First OLED full-screen, Face ID, no Home button."),
            ProductItem(imageName: "iPhone_XR_img", title: "iPhone XR", releaseDate: "2018", screenSize: "6.1\"", resolution: "1792x828", processor: "Apple A12 Bionic", camera: "12MP", description: "Liquid Retina LCD, Face ID, colorful design."),
            ProductItem(imageName: "iPhone_XS_img", title: "iPhone XS", releaseDate: "2018", screenSize: "5.8\"", resolution: "2436x1125", processor: "Apple A12 Bionic", camera: "12MP + 12MP", description: "OLED screen, IP68 water resistance, Smart HDR."),
            ProductItem(imageName: "iPhone_XS_Max_img", title: "iPhone XS Max", releaseDate: "2018", screenSize: "6.5\"", resolution: "2688x1242", processor: "Apple A12 Bionic", camera: "12MP + 12MP", description: "Largest iPhone, stereo speakers."),
            
            // iPhone 11 Series
            ProductItem(imageName: "iPhone_11_img", title: "iPhone 11", releaseDate: "2019", screenSize: "6.1\"", resolution: "1792x828", processor: "Apple A13 Bionic", camera: "12MP + 12MP", description: "Night mode, ultra-wide lens, Dolby Atmos."),
            ProductItem(imageName: "iPhone_11_Pro_img", title: "iPhone 11 Pro", releaseDate: "2019", screenSize: "5.8\"", resolution: "2436x1125", processor: "Apple A13 Bionic", camera: "12MP + 12MP + 12MP", description: "Pro triple-camera, Super Retina XDR display."),
            ProductItem(imageName: "iPhone_11_Pro_Max_img", title: "iPhone 11 Pro Max", releaseDate: "2019", screenSize: "6.5\"", resolution: "2688x1242", processor: "Apple A13 Bionic", camera: "12MP + 12MP + 12MP", description: "Largest battery, professional photography."),
            
            // iPhone SE 2020
            ProductItem(imageName: "iPhone_SE_2020_img", title: "iPhone SE (2020)", releaseDate: "2020", screenSize: "4.7\"", resolution: "1334x750", processor: "Apple A13 Bionic", camera: "12MP", description: "Classic design with A13 chip, Touch ID."),
            
            // iPhone 12 Series
            ProductItem(imageName: "iPhone_12_img", title: "iPhone 12", releaseDate: "2020", screenSize: "6.1\"", resolution: "2532x1170", processor: "Apple A14 Bionic", camera: "12MP + 12MP", description: "Flat-edge design, MagSafe ecosystem."),
            ProductItem(imageName: "iPhone_12_mini_img", title: "iPhone 12 mini", releaseDate: "2020", screenSize: "5.4\"", resolution: "2340x1080", processor: "Apple A14 Bionic", camera: "12MP + 12MP", description: "Smallest 5G iPhone, Ceramic Shield front cover."),
            ProductItem(imageName: "iPhone_12_Pro_img", title: "iPhone 12 Pro", releaseDate: "2020", screenSize: "6.1\"", resolution: "2532x1170", processor: "Apple A14 Bionic", camera: "12MP + 12MP + 12MP", description: "LiDAR scanner, ProRAW capture."),
            ProductItem(imageName: "iPhone_12_Pro_Max_img", title: "iPhone 12 Pro Max", releaseDate: "2020", screenSize: "6.7\"", resolution: "2778x1284", processor: "Apple A14 Bionic", camera: "12MP + 12MP + 12MP", description: "Sensor-shift stabilization, professional video."),
            
            // iPhone 13 Series
            ProductItem(imageName: "iPhone_13_img", title: "iPhone 13", releaseDate: "2021", screenSize: "6.1\"", resolution: "2532x1170", processor: "Apple A15 Bionic", camera: "12MP + 12MP", description: "Sensor-shift stabilization, longer battery life."),
            ProductItem(imageName: "iPhone_13_mini_img", title: "iPhone 13 mini", releaseDate: "2021", screenSize: "5.4\"", resolution: "2340x1080", processor: "Apple A15 Bionic", camera: "12MP + 12MP", description: "Smaller notch, Cinematic mode."),
            ProductItem(imageName: "iPhone_13_Pro_img", title: "iPhone 13 Pro", releaseDate: "2021", screenSize: "6.1\"", resolution: "2532x1170", processor: "Apple A15 Bionic", camera: "12MP + 12MP + 12MP", description: "ProMotion adaptive refresh rate, macro photography."),
            ProductItem(imageName: "iPhone_13_Pro_Max_img", title: "iPhone 13 Pro Max", releaseDate: "2021", screenSize: "6.7\"", resolution: "2778x1284", processor: "Apple A15 Bionic", camera: "12MP + 12MP + 12MP", description: "Longest battery life in an iPhone."),
            
            // iPhone 14 Series
            ProductItem(imageName: "iPhone_14_img", title: "iPhone 14", releaseDate: "2022", screenSize: "6.1\"", resolution: "2532x1170", processor: "Apple A15 Bionic", camera: "12MP + 12MP", description: "Crash detection, Photonic Engine, Action mode."),
            ProductItem(imageName: "iPhone_14_Plus_img", title: "iPhone 14 Plus", releaseDate: "2022", screenSize: "6.7\"", resolution: "2778x1284", processor: "Apple A15 Bionic", camera: "12MP + 12MP", description: "Large-screen base model, extended battery life."),
            ProductItem(imageName: "iPhone_14_Pro_img", title: "iPhone 14 Pro", releaseDate: "2022", screenSize: "6.1\"", resolution: "2556x1179", processor: "Apple A16 Bionic", camera: "48MP + 12MP + 12MP", description: "Dynamic Island, always-on display, quad-pixel sensor."),
            ProductItem(imageName: "iPhone_14_Pro_Max_img", title: "iPhone 14 Pro Max", releaseDate: "2022", screenSize: "6.7\"", resolution: "2796x1290", processor: "Apple A16 Bionic", camera: "48MP + 12MP + 12MP", description: "Largest Pro screen, professional camera system."),
            
            // iPhone 15 Series
            ProductItem(imageName: "iPhone_15_img", title: "iPhone 15", releaseDate: "2023", screenSize: "6.1\"", resolution: "2556x1179", processor: "Apple A16 Bionic", camera: "48MP + 12MP", description: "Dynamic Island expanded, USB-C port, matte glass."),
            ProductItem(imageName: "iPhone_15_Plus_img", title: "iPhone 15 Plus", releaseDate: "2023", screenSize: "6.7\"", resolution: "2796x1290", processor: "Apple A16 Bionic", camera: "48MP + 12MP", description: "Large-screen base model, second-gen UWB chip."),
            ProductItem(imageName: "iPhone_15_Pro_img", title: "iPhone 15 Pro", releaseDate: "2023", screenSize: "6.1\"", resolution: "2556x1179", processor: "Apple A17 Pro", camera: "48MP + 12MP + 12MP", description: "Titanium frame, customizable action button."),
            ProductItem(imageName: "iPhone_15_Pro_Max_img", title: "iPhone 15 Pro Max", releaseDate: "2023", screenSize: "6.7\"", resolution: "2796x1290", processor: "Apple A17 Pro", camera: "48MP + 12MP + 12MP", description: "5x optical zoom, spatial video capture."),
            
            // iPhone 16 Series
            ProductItem(imageName: "iPhone_16_img", title: "iPhone 16", releaseDate: "2024", screenSize: "6.3\"", resolution: "2556x1179", processor: "Apple A18", camera: "48MP + 12MP", description: "Vertical camera arrangement for spatial video, new quick photo button."),
            ProductItem(imageName: "iPhone_16_Plus_img", title: "iPhone 16 Plus", releaseDate: "2024", screenSize: "6.7\"", resolution: "2796x1290", processor: "Apple A18", camera: "48MP + 12MP", description: "6.7-inch OLED screen, Dynamic Island, A18 chip, dual-camera system, supports 4K Dolby Vision video, extended battery life, ideal for large-screen users."),
            ProductItem(imageName: "iPhone_16_Pro_img", title: "iPhone 16 Pro", releaseDate: "2024", screenSize: "6.3\"", resolution: "2622x1206", processor: "Apple A18 Pro", camera: "48MP + 48MP + 12MP", description: "6.3-inch OLED screen, A18 Pro chip, advanced AI photography, visual intelligence, new camera controls, ideal for high-performance users."),
            ProductItem(imageName: "iPhone_16_Pro_Max_img", title: "iPhone 16 Pro Max", releaseDate: "2024", screenSize: "6.9\"", resolution: "2868x1320", processor: "Apple A18 Pro", camera: "48MP + 48MP + 12MP", description: "6.9-inch large screen, A18 Pro chip, advanced AI and visual intelligence, new camera controls, ideal for ultimate performance and large-screen enthusiasts.")
        ]
    
    var body: some View {
        ZStack {
            ProductView(title: "iPhone", items: items)
                .toolbar(isToolbarHidden ? .hidden : .visible, for: .tabBar)
                .onAppear {
                    isToolbarHidden = true
                }
                .onDisappear {
                    isToolbarHidden = false
                }
            
            SwipeHintView(message: "Tap to Zoom", imageName: "hand.tap.fill")
        }
    }
}

#Preview {
    iPhoneView()
}
