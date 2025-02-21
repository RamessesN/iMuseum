//
//  TV_ProductsView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/8.
//

import SwiftUI

struct tvView: View {
    @State private var isToolbarHidden = true
    
    let items = [
        ProductItem(
            imageName: "apple_tv_1st_gen_img",
            title: "Apple TV 1st",
            releaseDate: "2006",
            screenSize: nil,
            resolution: "",
            processor: "Intel Chip",
            camera: nil,
            description: "First-generation multimedia set-top box, featuring USB, power, Ethernet, component, analog video, and optical digital audio ports, offering a new home entertainment experience."
        ),
        ProductItem(
            imageName: "apple_tv_2nd_gen_img",
            title: "Apple TV 2nd",
            releaseDate: "2010",
            screenSize: nil,
            resolution: "",
            processor: "Apple A4",
            camera: nil,
            description: "Added support for third-party apps (e.g., Netflix) and integrated Hulu, Amazon Prime, HBO, expanding the content ecosystem."
        ),
        ProductItem(
            imageName: "apple_tv_3rd_gen_img",
            title: "Apple TV 3rd",
            releaseDate: "2012",
            screenSize: nil,
            resolution: "1080P",
            processor: "Apple A5",
            camera: nil,
            description: "Supported 1080P HD video playback with a faster processor for smoother performance."
        ),
        ProductItem(
            imageName: "apple_tv_4k_2nd_gen_img",
            title: "Apple TV 4K 2nd",
            releaseDate: "2021",
            screenSize: nil,
            resolution: "4K60fps",
            processor: "Apple A12 Bionic",
            camera: nil,
            description: "Model A2169, supports HDMI 2.1, HDR10, Dolby Vision, Gigabit Ethernet, Wi-Fi 6, and Bluetooth 5.0, delivering superior picture quality and connectivity."
        ),
        ProductItem(
            imageName: "apple_tv_4k_3rd_gen_img",
            title: "Apple TV 4K 3rd",
            releaseDate: "2022",
            screenSize: nil,
            resolution: "4K60fps",
            processor: "Apple A15 Bionic",
            camera: nil,
            description: "Model A2737, supports HDMI 2.1, HDR10, HDR10+, Dolby Vision, available in Wi-Fi and Wi-Fi + Ethernet versions, meeting demands for high-quality video and multimedia content."
        )
    ]
    
    var body: some View {
        ProductView(title: "Apple TV", items: items)
            .toolbar(isToolbarHidden ? .hidden : .visible, for: .tabBar)
            .onAppear {
                isToolbarHidden = true
            }
            .onDisappear {
                isToolbarHidden = false
            }
    }
}

#Preview {
    tvView()
}
