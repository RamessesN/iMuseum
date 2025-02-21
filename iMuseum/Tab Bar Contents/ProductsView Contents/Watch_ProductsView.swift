//
//  Watch_ProductsView.swift
//  Apple History
//
//  Created by 赵禹惟 on 2025/2/8.
//

import SwiftUI

struct WatchView: View {
    @State private var isToolbarHidden = true
    
    let items = [
        ProductItem(
            imageName: "Watch_1st_img",
            title: "Apple Watch 1",
            releaseDate: "2015",
            screenSize: "38mm / 42mm",
            resolution: "272 x 340 (38mm), 312 x 390 (42mm)",
            processor: "S1",
            camera: nil,
            description: "The first-generation Apple Watch, featuring a classic design with health monitoring and notification capabilities."
        ),
        ProductItem(
            imageName: "Watch_Sport_1_img",
            title: "Apple Watch Sport 1",
            releaseDate: "2015",
            screenSize: "38mm / 42mm",
            resolution: "272 x 340 (38mm), 312 x 390 (42mm)",
            processor: "S1",
            camera: nil,
            description: "The sport version of the Apple Watch, lightweight and durable, perfect for everyday wear."
        ),
        ProductItem(
            imageName: "Watch_Edition_1_img",
            title: "Apple Watch Edition 1",
            releaseDate: "2015",
            screenSize: "38mm / 42mm",
            resolution: "272 x 340 (38mm), 312 x 390 (42mm)",
            processor: "S1",
            camera: nil,
            description: "The luxury edition of the Apple Watch, crafted with premium materials."
        ),
        ProductItem(
            imageName: "Watch_S1_img",
            title: "Apple Watch S1",
            releaseDate: "2016",
            screenSize: "38mm / 42mm",
            resolution: "272 x 340 (38mm), 312 x 390 (42mm)",
            processor: "S1P",
            camera: nil,
            description: "An upgraded version of the Apple Watch with improved performance and water resistance."
        ),
        ProductItem(
            imageName: "Watch_S2_img",
            title: "Apple Watch S2",
            releaseDate: "2016",
            screenSize: "38mm / 42mm",
            resolution: "272 x 340 (38mm), 312 x 390 (42mm)",
            processor: "S2",
            camera: nil,
            description: "Built-in GPS for more accurate activity tracking."
        ),
        ProductItem(
            imageName: "Watch_S3_img",
            title: "Apple Watch S3",
            releaseDate: "2017",
            screenSize: "38mm / 42mm",
            resolution: "272 x 340 (38mm), 312 x 390 (42mm)",
            processor: "S3",
            camera: nil,
            description: "Supports cellular connectivity, staying connected anywhere."
        ),
        ProductItem(
            imageName: "Watch_S4_img",
            title: "Apple Watch S4",
            releaseDate: "2018",
            screenSize: "40mm / 44mm",
            resolution: "324 x 394 (40mm), 368 x 448 (44mm)",
            processor: "S4",
            camera: nil,
            description: "Larger display with ECG functionality."
        ),
        ProductItem(
            imageName: "Watch_S5_img",
            title: "Apple Watch S5",
            releaseDate: "2019",
            screenSize: "40mm / 44mm",
            resolution: "324 x 394 (40mm), 368 x 448 (44mm)",
            processor: "S5",
            camera: nil,
            description: "Always-on Retina display with a built-in compass."
        ),
        ProductItem(
            imageName: "Watch_S6_img",
            title: "Apple Watch S6",
            releaseDate: "2020",
            screenSize: "40mm / 44mm",
            resolution: "324 x 394 (40mm), 368 x 448 (44mm)",
            processor: "S6",
            camera: nil,
            description: "Faster processor with blood oxygen monitoring."
        ),
        ProductItem(
            imageName: "Watch_SE_1_img",
            title: "Apple Watch SE 1",
            releaseDate: "2020",
            screenSize: "40mm / 44mm",
            resolution: "324 x 394 (40mm), 368 x 448 (44mm)",
            processor: "S5",
            camera: nil,
            description: "Affordable option with comprehensive features."
        ),
        ProductItem(
            imageName: "Watch_S7_img",
            title: "Apple Watch S7",
            releaseDate: "2021",
            screenSize: "41mm / 45mm",
            resolution: "352 x 430 (41mm), 396 x 484 (45mm)",
            processor: "S7",
            camera: nil,
            description: "Larger display with faster charging."
        ),
        ProductItem(
            imageName: "Watch_S8_img",
            title: "Apple Watch S8",
            releaseDate: "2022",
            screenSize: "41mm / 45mm",
            resolution: "352 x 430 (41mm), 396 x 484 (45mm)",
            processor: "S8",
            camera: nil,
            description: "New temperature sensor with enhanced health features."
        ),
        ProductItem(
            imageName: "Watch_SE_2_img",
            title: "Apple Watch SE 2",
            releaseDate: "2022",
            screenSize: "40mm / 44mm",
            resolution: "324 x 394 (40mm), 368 x 448 (44mm)",
            processor: "S8",
            camera: nil,
            description: "Upgraded SE model with stronger performance."
        ),
        ProductItem(
            imageName: "Watch_Ultra_img",
            title: "Apple Watch Ultra",
            releaseDate: "2022",
            screenSize: "49mm",
            resolution: "396 x 484",
            processor: "S8",
            camera: nil,
            description: "Designed for extreme sports, rugged and durable."
        ),
        ProductItem(
            imageName: "Watch_S9_img",
            title: "Apple Watch S9",
            releaseDate: "2023",
            screenSize: "41mm / 45mm",
            resolution: "352 x 430 (41mm), 396 x 484 (45mm)",
            processor: "S9",
            camera: nil,
            description: "Introduces double-tap gesture control with enhanced functionality."
        ),
        ProductItem(
            imageName: "Watch_Ultra_2_img",
            title: "Apple Watch Ultra 2",
            releaseDate: "2023",
            screenSize: "49mm",
            resolution: "396 x 484",
            processor: "S9",
            camera: nil,
            description: "Upgraded Ultra series with longer battery life."
        ),
        ProductItem(
            imageName: "Watch_S10_img",
            title: "Apple Watch S10",
            releaseDate: "2024",
            screenSize: "41mm / 45mm",
            resolution: "352 x 430 (41mm), 396 x 484 (45mm)",
            processor: "S10",
            camera: nil,
            description: "Future technology with an ultimate experience."
        )
    ]
    
    var body: some View {
        ProductView(title: "Apple Watch", items: items)
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
    WatchView()
}
