//
//  iPad_ProductsView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/8.
//

import SwiftUI

struct iPadView: View {
    @State private var isToolbarHidden = true
    
    let items = [
        ProductItem(imageName: "iPad_1st_img", title: "iPad 1", releaseDate: "2010", screenSize: "9.7\"", resolution: "1024x768", processor: "Apple A4", camera: nil, description: "The first iPad, introduced the tablet format with a 9.7-inch display and iOS ecosystem."),
        ProductItem(imageName: "iPad_2nd_img", title: "iPad 2", releaseDate: "2011", screenSize: "9.7\"", resolution: "1024x768", processor: "Apple A5", camera: nil, description: "Second-generation iPad, added front and rear cameras, and was thinner."),
        ProductItem(imageName: "iPad_3rd_img", title: "iPad 3", releaseDate: "2012", screenSize: "9.7\"", resolution: "2048x1536", processor: "Apple A5X", camera: nil, description: "Introduced Retina display with higher resolution and improved performance."),
        ProductItem(imageName: "iPad_4th_img", title: "iPad 4", releaseDate: "2012", screenSize: "9.7\"", resolution: "2048x1536", processor: "Apple A6X", camera: nil, description: "Upgraded to A6X chip, added Lightning port, and enhanced performance."),
        ProductItem(imageName: "iPad_mini_1st_img", title: "iPad mini 1", releaseDate: "2012", screenSize: "7.9\"", resolution: "1024x768", processor: "Apple A5", camera: nil, description: "First-generation iPad mini, smaller and more portable."),
        ProductItem(imageName: "iPad_mini_2nd_img", title: "iPad mini 2", releaseDate: "2013", screenSize: "7.9\"", resolution: "2048x1536", processor: "Apple A7", camera: nil, description: "Second-generation iPad mini, added Retina display and better performance."),
        ProductItem(imageName: "iPad_Air_1st_img", title: "iPad Air 1", releaseDate: "2013", screenSize: "9.7\"", resolution: "2048x1536", processor: "Apple A7", camera: nil, description: "First iPad Air, thinner design with A7 chip."),
        ProductItem(imageName: "iPad_mini_3rd_img", title: "iPad mini 3", releaseDate: "2014", screenSize: "7.9\"", resolution: "2048x1536", processor: "Apple A7", camera: nil, description: "Third-generation iPad mini, added Touch ID."),
        ProductItem(imageName: "iPad_Air_2nd_img", title: "iPad Air 2", releaseDate: "2014", screenSize: "9.7\"", resolution: "2048x1536", processor: "Apple A8X", camera: nil, description: "Second iPad Air, added Touch ID and anti-reflective coating."),
        ProductItem(imageName: "iPad_mini_4th_img", title: "iPad mini 4", releaseDate: "2015", screenSize: "7.9\"", resolution: "2048x1536", processor: "Apple A8", camera: nil, description: "Fourth-generation iPad mini, upgraded display and performance."),
        ProductItem(imageName: "iPad_Pro_12_9_1st_img", title: "12.9\" iPad Pro 1", releaseDate: "2015", screenSize: "12.9\"", resolution: "2732x2048", processor: "Apple A9X", camera: nil, description: "First 12.9\" iPad Pro, large screen, supports Apple Pencil and Smart Keyboard."),
        ProductItem(imageName: "iPad_Pro_9_7_1st_img", title: "9.7\" iPad Pro", releaseDate: "2016", screenSize: "9.7\"", resolution: "2048x1536", processor: "Apple A9X", camera: nil, description: "9.7\" iPad Pro, True Tone display, improved front camera."),
        ProductItem(imageName: "iPad_5th_img", title: "iPad 5", releaseDate: "2017", screenSize: "9.7\"", resolution: "2048x1536", processor: "Apple A9", camera: nil, description: "Fifth-generation iPad, A9 chip, better performance, affordable price."),
        ProductItem(imageName: "iPad_Pro_10_9_2nd_img", title: "10.9\" iPad Pro", releaseDate: "2017", screenSize: "10.9\"", resolution: "2224x1668", processor: "Apple A10X Fusion", camera: nil, description: "New iPad Pro, 10.5\" screen, A10X Fusion chip, enhanced graphics."),
        ProductItem(imageName: "iPad_Pro_12_9_2nd_img", title: "12.9\" iPad Pro 2", releaseDate: "2017", screenSize: "12.9\"", resolution: "2732x2048", processor: "Apple A10X Fusion", camera: nil, description: "Second-generation 12.9\" iPad Pro, stronger performance, advanced graphics."),
        ProductItem(imageName: "iPad_6th_img", title: "iPad 6", releaseDate: "2018", screenSize: "9.7\"", resolution: "2048x1536", processor: "Apple A10 Fusion", camera: nil, description: "Sixth-generation iPad, first to support Apple Pencil."),
        ProductItem(imageName: "iPad_Pro_11_1st_img", title: "11\" iPad Pro 1", releaseDate: "2018", screenSize: "11\"", resolution: "2388x1668", processor: "Apple A12X Bionic", camera: nil, description: "First 11\" iPad Pro, A12X Bionic chip, powerful performance."),
        ProductItem(imageName: "iPad_Pro_12_9_3rd_img", title: "12.9\" iPad Pro 3", releaseDate: "2018", screenSize: "12.9\"", resolution: "2732x2048", processor: "Apple A12X Bionic", camera: nil, description: "Third-generation 12.9\" iPad Pro, USB-C port, high performance."),
        ProductItem(imageName: "iPad_mini_5th_img", title: "iPad mini 5", releaseDate: "2019", screenSize: "7.9\"", resolution: "2048x1536", processor: "Apple A12 Bionic", camera: nil, description: "Fifth-generation iPad mini, A12 chip, supports second-gen Apple Pencil."),
        ProductItem(imageName: "iPad_Air_3rd_img", title: "iPad Air 3", releaseDate: "2019", screenSize: "10.5\"", resolution: "2224x1668", processor: "Apple A12 Bionic", camera: nil, description: "Third-generation iPad Air, A12 chip, Retina display."),
        ProductItem(imageName: "iPad_7th_img", title: "iPad 7", releaseDate: "2019", screenSize: "10.2\"", resolution: "2160x1620", processor: "Apple A10 Fusion", camera: nil, description: "Seventh-generation iPad, larger display, improved performance."),
        ProductItem(imageName: "iPad_Pro_11_2nd_img", title: "11\" iPad Pro 2", releaseDate: "2020", screenSize: "11\"", resolution: "2388x1668", processor: "Apple A12Z Bionic", camera: nil, description: "Second 11\" iPad Pro, enhanced performance, 5G support."),
        ProductItem(imageName: "iPad_Pro_12_9_4th_img", title: "12.9\" iPad Pro 4", releaseDate: "2020", screenSize: "12.9\"", resolution: "2732x2048", processor: "Apple A12Z Bionic", camera: nil, description: "Fourth-generation 12.9\" iPad Pro, powerful graphics and processing."),
        ProductItem(imageName: "iPad_8th_img", title: "iPad 8", releaseDate: "2020", screenSize: "10.2\"", resolution: "2160x1620", processor: "Apple A12 Bionic", camera: nil, description: "Eighth-generation iPad, A12 Bionic chip, efficient performance."),
        ProductItem(imageName: "iPad_Air_4th_img", title: "iPad Air 4", releaseDate: "2020", screenSize: "10.9\"", resolution: "2360x1640", processor: "Apple A14 Bionic", camera: nil, description: "Fourth-generation iPad Air, A14 chip, modern design, USB-C port."),
        ProductItem(imageName: "iPad_Pro_11_3rd_img", title: "11\" iPad Pro 3", releaseDate: "2021", screenSize: "11\"", resolution: "2388x1668", processor: "Apple M1", camera: nil, description: "Third 11\" iPad Pro, M1 chip, Thunderbolt port."),
        ProductItem(imageName: "iPad_Pro_12_9_5th_img", title: "12.9\" iPad Pro 5", releaseDate: "2021", screenSize: "12.9\"", resolution: "2732x2048", processor: "Apple M1", camera: nil, description: "Fifth-generation 12.9\" iPad Pro, M1 chip, Mini-LED display."),
        ProductItem(imageName: "iPad_9th_img", title: "iPad 9", releaseDate: "2021", screenSize: "10.2\"", resolution: "2160x1620", processor: "Apple A13 Bionic", camera: nil, description: "Ninth-generation iPad, A13 chip, True Tone display."),
        ProductItem(imageName: "iPad_mini_6th_img", title: "iPad mini 6", releaseDate: "2021", screenSize: "8.3\"", resolution: "2266x1488", processor: "Apple A15 Bionic", camera: nil, description: "Sixth-generation iPad mini, A15 chip, modern design, supports second-gen Apple Pencil."),
        ProductItem(imageName: "iPad_Air_5th_img", title: "iPad Air 5", releaseDate: "2022", screenSize: "10.9\"", resolution: "2360x1640", processor: "Apple M1", camera: nil, description: "Fifth-generation iPad Air, M1 chip, top-tier performance."),
        ProductItem(imageName: "iPad_10th_img", title: "iPad 10", releaseDate: "2022", screenSize: "10.9\"", resolution: "2360x1640", processor: "Apple A14 Bionic", camera: nil, description: "Tenth-generation iPad, redesigned, larger screen, stronger performance."),
        ProductItem(imageName: "iPad_Pro_11_4th_img", title: "11\" iPad Pro 4", releaseDate: "2022", screenSize: "11\"", resolution: "2388x1668", processor: "Apple M2", camera: nil, description: "Fourth 11\" iPad Pro, M2 chip, further enhanced performance."),
        ProductItem(imageName: "iPad_Pro_12_9_6th_img", title: "12.9\" iPad Pro 6", releaseDate: "2022", screenSize: "12.9\"", resolution: "2732x2048", processor: "Apple M2", camera: nil, description: "Sixth-generation 12.9\" iPad Pro, M2 chip, best-in-class display and performance."),
        ProductItem(imageName: "iPad_Pro_11_M4_img", title: "11\" iPad Pro M4", releaseDate: "2024", screenSize: "11\"", resolution: "2388x1668", processor: "Apple M4", camera: nil, description: "M4-powered iPad Pro, ultimate performance, new features."),
        ProductItem(imageName: "iPad_Air_6th_img", title: "iPad Air 6", releaseDate: "2024", screenSize: "13\"", resolution: "2768x1812", processor: "Apple M4", camera: nil, description: "Sixth-generation iPad Air, redesigned, M4 chip."),
        ProductItem(imageName: "iPad_mini_7th_img", title: "iPad mini 7", releaseDate: "2024", screenSize: "8.3\"", resolution: "2266x1488", processor: "Apple M4", camera: nil, description: "Seventh-generation iPad mini, latest M4 chip, improved performance.")
    ]
    
    var body: some View {
        ProductView(title: "iPad", items: items)
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
    iPadView()
}
