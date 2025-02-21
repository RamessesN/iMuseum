//
//  Mac_ProductsView.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/8.
//

import SwiftUI

struct MacView: View {
    @State private var isToolbarHidden = true
    
    let items = [
        ProductItem(
            imageName: "Apple_1_img",
            title: "Apple I",
            releaseDate: "1975",
            screenSize: nil,
            resolution: "N/A",
            processor: "MOS 6502 @ 1 MHz",
            camera: nil,
            description: "Apple's first product, designed by Steve Wozniak, primarily for personal computer enthusiasts."
        ),
        ProductItem(
            imageName: "Apple_2_img",
            title: "Apple II",
            releaseDate: "1977",
            screenSize: nil,
            resolution: "N/A",
            processor: "MOS 6502 @ 1 MHz",
            camera: nil,
            description: "Apple's first mass-produced personal computer, supporting color graphics and expansion slots, setting a benchmark in the early PC market."
        ),
        ProductItem(
            imageName: "Apple_3_img",
            title: "Apple III",
            releaseDate: "1980",
            screenSize: nil,
            resolution: "N/A",
            processor: "Synertek 6502 A @ 2 MHz",
            camera: nil,
            description: "Apple's business-oriented computer, but it failed due to overheating issues and hardware faults."
        ),
        ProductItem(
            imageName: "Apple_Lisa_img",
            title: "Apple Lisa",
            releaseDate: "1983",
            screenSize: "12-inch",
            resolution: "720 x 364",
            processor: "Motorola 68000 @ 5 MHz",
            camera: nil,
            description: "The first personal computer with a graphical user interface (GUI), but it failed to gain popularity due to its high price."
        ),
        ProductItem(
            imageName: "Power_Macintosh_1st_img",
            title: "Power Macintosh 1",
            releaseDate: "1994",
            screenSize: "14-inch",
            resolution: "640 x 480",
            processor: "PowerPC 601 @ 60 MHz",
            camera: nil,
            description: "Apple's first computer based on the PowerPC architecture, marking the transition from Motorola 68000 series processors."
        ),
        ProductItem(
            imageName: "Power_Macintosh_2nd_img",
            title: "Power Macintosh 2",
            releaseDate: "1995",
            screenSize: "14-inch",
            resolution: "832 x 624",
            processor: "PowerPC 603e @ 75 MHz",
            camera: nil,
            description: "A follow-up model in the Power Macintosh series, with improved performance and higher resolution support."
        ),
        ProductItem(
            imageName: "PowerPC_G3Mac_img",
            title: "PowerPC G3",
            releaseDate: "1997",
            screenSize: "14-inch",
            resolution: "1024 x 768",
            processor: "PowerPC G3 @ 233 MHz",
            camera: nil,
            description: "Apple's high-performance processor, widely used in iMac and PowerBook product lines."
        ),
        ProductItem(
            imageName: "imac_g3_1998_img",
            title: "iMac G3",
            releaseDate: "1998",
            screenSize: "15-inch",
            resolution: "1024x768",
            processor: "PowerPC G3 (233MHz)",
            camera: nil,
            description: "The first iMac, featuring a translucent colorful design and USB ports, revolutionizing personal computer aesthetics."
        ),
        ProductItem(
            imageName: "PowerPC_G4Mac_img",
            title: "PowerPC G4",
            releaseDate: "1999",
            screenSize: "15-inch",
            resolution: "1024 x 768",
            processor: "PowerPC G4 @ 400 MHz",
            camera: nil,
            description: "Apple's high-performance processor with AltiVec technology, widely used in professional workstations and laptops."
        ),
        ProductItem(
            imageName: "imac_g3_2000_img",
            title: "iMac G3",
            releaseDate: "2000",
            screenSize: "15-inch or 17-inch",
            resolution: "1024x768 (15-inch) / 1280x960 (17-inch)",
            processor: "PowerPC G3 (350MHz, 400MHz, or 500MHz)",
            camera: nil,
            description: "Upgraded with faster processors and larger screen options, continuing the iconic colorful design."
        ),
        ProductItem(
            imageName: "imac_g4_2002_img",
            title: "iMac G4",
            releaseDate: "2002",
            screenSize: "15-inch or 17-inch",
            resolution: "1024x768 (15-inch) / 1280x960 (17-inch)",
            processor: "PowerPC G4 (700MHz, 800MHz, or 1GHz)",
            camera: "iSight Camera",
            description: "Unique adjustable 'lamp-style' design, connecting the screen and base with a flexible arm, exuding futurism."
        ),
        ProductItem(
            imageName: "PowerPC_G5Mac_img",
            title: "PowerPC G5",
            releaseDate: "2003",
            screenSize: "20-inch",
            resolution: "1680 x 1050",
            processor: "PowerPC G5 @ 1.6 GHz",
            camera: nil,
            description: "Apple's last processor based on the PowerPC architecture, powerful but eventually replaced by Intel processors."
        ),
        ProductItem(
            imageName: "imac_g5_2004_img",
            title: "iMac G5",
            releaseDate: "2004",
            screenSize: "17-inch or 20-inch",
            resolution: "1280x960 (17-inch) / 1680x1050 (20-inch)",
            processor: "PowerPC G5 (1.6GHz, 1.8GHz, or 2.0GHz)",
            camera: "iSight Camera",
            description: "First ultra-thin all-in-one design, integrating all components behind the display, laying the foundation for modern iMacs."
        ),
        ProductItem(
            imageName: "imac_intel_2006_img",
            title: "iMac (2006)",
            releaseDate: "2006",
            screenSize: "17-inch or 20-inch",
            resolution: "1280x960 (17-inch) / 1680x1050 (20-inch)",
            processor: "Intel Core Duo (1.83GHz or 2.0GHz)",
            camera: "iSight Camera",
            description: "The first iMac with an Intel chip, significantly improving performance while retaining the ultra-thin design of the PowerPC era."
        ),
        ProductItem(
            imageName: "imac_intel_2007_img",
            title: "iMac (2007)",
            releaseDate: "2007",
            screenSize: "20-inch or 24-inch",
            resolution: "1680x1050 (20-inch) / 1920x1200 (24-inch)",
            processor: "Intel Core 2 Duo (2.0GHz, 2.4GHz, or 2.8GHz)",
            camera: "iSight Camera",
            description: "Introduced aluminum body design, replacing the previous plastic casing, becoming the iconic look of modern iMacs."
        ),
        ProductItem(
            imageName: "macbook_air_2008_img",
            title: "MacBook Air (2008)",
            releaseDate: "2008",
            screenSize: "13.3-inch",
            resolution: "1280x800",
            processor: "Intel Core 2 Duo (1.6GHz or 1.8GHz)",
            camera: "iSight Camera",
            description: "The first MacBook Air, focusing on thin and lightweight design, was one of the thinnest laptops at the time."
        ),
        ProductItem(
            imageName: "mac_pro_2008_img",
            title: "Mac Pro (2008)",
            releaseDate: "2008",
            screenSize: nil,
            resolution: "",
            processor: "Intel Xeon (Dual Quad-Core 2.8GHz or 3.2GHz)",
            camera: nil,
            description: "High-end workstation, supporting multi-GPU configurations, ideal for professional content creation and high-performance computing."
        ),
        ProductItem(
            imageName: "imac_2008_img",
            title: "iMac (2008)",
            releaseDate: "2008",
            screenSize: "20-inch or 24-inch",
            resolution: "1680x1050 (20-inch) / 1920x1200 (24-inch)",
            processor: "Intel Core 2 Duo (2.4GHz, 2.66GHz, or 2.8GHz)",
            camera: "iSight Camera",
            description: "Aluminum all-in-one design, laying the foundation for modern iMacs."
        ),
        ProductItem(
            imageName: "macbook_pro_2008_img",
            title: "MacBook Pro (2008)",
            releaseDate: "2008",
            screenSize: "15.4-inch",
            resolution: "1440x900",
            processor: "Intel Core 2 Duo (2.4GHz or 2.53GHz)",
            camera: "iSight Camera",
            description: "Second-generation MacBook Pro, featuring aluminum unibody design."
        ),
        ProductItem(
            imageName: "mac_mini_2009_img",
            title: "Mac mini (2009)",
            releaseDate: "2009",
            screenSize: nil,
            resolution: "",
            processor: "Intel Core 2 Duo (2.0GHz or 2.26GHz)",
            camera: nil,
            description: "Compact desktop computer, supporting various peripherals, suitable for home entertainment and small workstations."
        ),
        ProductItem(
            imageName: "mac_pro_2010_img",
            title: "Mac Pro (2010)",
            releaseDate: "2010",
            screenSize: nil,
            resolution: "",
            processor: "Intel Xeon (Quad-Core or Six-Core 3.33GHz)",
            camera: nil,
            description: "Upgraded with faster processors and increased memory capacity, further enhancing performance."
        ),
        ProductItem(
            imageName: "macbook_air_2010_img",
            title: "MacBook Air (2010)",
            releaseDate: "2010",
            screenSize: "11.6-inch or 13.3-inch",
            resolution: "1366x768 (11.6-inch) / 1440x900 (13.3-inch)",
            processor: "Intel Core 2 Duo (1.4GHz, 1.6GHz, or 1.86GHz)",
            camera: "FaceTime Camera",
            description: "Second-generation MacBook Air, introducing SSDs and fanless design for the first time."
        ),
        ProductItem(
            imageName: "macbook_pro_2012_img",
            title: "MacBook Pro (2012, Retina)",
            releaseDate: "2012",
            screenSize: "13.3-inch or 15.4-inch",
            resolution: "2560x1600 (13-inch) / 2880x1800 (15-inch)",
            processor: "Intel Core i5 / i7 (3rd Gen Ivy Bridge)",
            camera: "720p FaceTime Camera",
            description: "The first MacBook Pro with Retina display, marking Apple's entry into the high-resolution laptop era."
        ),
        ProductItem(
            imageName: "imac_2012_img",
            title: "iMac (2012)",
            releaseDate: "2012",
            screenSize: "21.5-inch or 27-inch",
            resolution: "1920x1080 (21.5-inch) / 2560x1440 (27-inch)",
            processor: "Intel Core i5 / i7 (3rd Gen Ivy Bridge)",
            camera: "720p FaceTime Camera",
            description: "Significantly thinner design, becoming one of the thinnest all-in-one computers ever."
        ),
        ProductItem(
            imageName: "macbook_air_2013_img",
            title: "MacBook Air (2013)",
            releaseDate: "2013",
            screenSize: "11.6-inch or 13.3-inch",
            resolution: "1366x768 (11.6-inch) / 1440x900 (13.3-inch)",
            processor: "Intel Core i5 / i7 (4th Gen Haswell)",
            camera: "720p FaceTime Camera",
            description: "The last non-Retina MacBook Air before upgrading to Retina displays, offering stable performance and long battery life."
        ),
        ProductItem(
            imageName: "mac_mini_2014_img",
            title: "Mac mini (2014)",
            releaseDate: "2014",
            screenSize: nil,
            resolution: "",
            processor: "Intel Core i5 / i7 (4th Gen Haswell)",
            camera: nil,
            description: "Upgraded with faster processors and Thunderbolt 2 ports, enhancing overall performance."
        ),
        ProductItem(
            imageName: "macbook_pro_2016_img",
            title: "MacBook Pro (2016)",
            releaseDate: "2016",
            screenSize: "13.3-inch or 15.4-inch",
            resolution: "2560x1600 (13-inch) / 2880x1800 (15-inch)",
            processor: "Intel Core i5 / i7 (6th Gen Skylake)",
            camera: "720p FaceTime Camera",
            description: "Introduced Touch Bar and a thinner design, becoming a hallmark of the new MacBook Pro generation."
        ),
        ProductItem(
            imageName: "imac_2017_img",
            title: "iMac (2017)",
            releaseDate: "2017",
            screenSize: "21.5-inch or 27-inch",
            resolution: "4096x2304 (21.5-inch Retina) / 5120x2880 (27-inch Retina 5K)",
            processor: "Intel Core i5 / i7 (7th Gen Kaby Lake)",
            camera: "1080p FaceTime Camera",
            description: "Upgraded to Retina displays, providing higher resolution and better color performance."
        ),
        ProductItem(
            imageName: "macbook_pro_2019_img",
            title: "MacBook Pro (2019, 16-inch)",
            releaseDate: "2019",
            screenSize: "16-inch",
            resolution: "3072x1920",
            processor: "Intel Core i7 / i9 (9th Gen)",
            camera: "720p FaceTime Camera",
            description: "Upgraded with a larger screen and improved keyboard design, offering stronger performance and better thermal management."
        ),
        ProductItem(
            imageName: "mac_pro_2019_img",
            title: "Mac Pro (2019)",
            releaseDate: "2019",
            screenSize: nil,
            resolution: "",
            processor: "Intel Xeon W Series Processor",
            camera: nil,
            description: "Modular design, supporting multi-GPU configurations, designed for high-end computing tasks and professional content creation."
        ),
        ProductItem(
            imageName: "macbook_air_2020_img",
            title: "MacBook Air (2020, M1)",
            releaseDate: "2020",
            screenSize: "13.3-inch",
            resolution: "2560x1600 (Retina)",
            processor: "Apple M1",
            camera: "720p FaceTime Camera",
            description: "The first MacBook Air with Apple M1 chip, fanless design, powerful performance, and long battery life."
        ),
        ProductItem(
            imageName: "macbook_pro_13_2020_m1_img",
            title: "MacBook Pro (13-inch, 2020, M1)",
            releaseDate: "2020",
            screenSize: "13.3-inch",
            resolution: "2560x1600 (Retina)",
            processor: "Apple M1",
            camera: "720p FaceTime Camera",
            description: "13-inch MacBook Pro with M1 chip, significant performance boost, ideal for professionals."
        ),
        ProductItem(
            imageName: "mac_mini_2020_m1_img",
            title: "Mac mini (2020, M1)",
            releaseDate: "2020",
            screenSize: nil,
            resolution: "",
            processor: "Apple M1",
            camera: nil,
            description: "The first Mac mini with M1 chip,大幅提升性能，适合家庭娱乐和小型工作站。"
        ),
        ProductItem(
            imageName: "imac_24_2021_img",
            title: "iMac (24-inch, 2021)",
            releaseDate: "2021",
            screenSize: "24-inch",
            resolution: "4480x2520 (4.5K Retina)",
            processor: "Apple M1",
            camera: "1080p FaceTime Camera",
            description: "Ultra-thin 24-inch iMac with M1 chip, available in multiple colors."
        ),
        ProductItem(
            imageName: "macbook_pro_14_2021_img",
            title: "MacBook Pro (14-inch, 2021)",
            releaseDate: "2021",
            screenSize: "14.2-inch",
            resolution: "3024x1964 (Liquid Retina XDR)",
            processor: "Apple M1 Pro / M1 Max",
            camera: "1080p FaceTime Camera",
            description: "Redesigned 14-inch MacBook Pro with Liquid Retina XDR display and powerful M1 Pro/Max chips."
        ),
        ProductItem(
            imageName: "macbook_pro_16_2021_img",
            title: "MacBook Pro (16-inch, 2021)",
            releaseDate: "2021",
            screenSize: "16.2-inch",
            resolution: "3456x2234 (Liquid Retina XDR)",
            processor: "Apple M1 Pro / M1 Max",
            camera: "1080p FaceTime Camera",
            description: "Redesigned 16-inch MacBook Pro with enhanced performance and improved cooling system."
        ),
        ProductItem(
            imageName: "mac_studio_2022_img",
            title: "Mac Studio (2022)",
            releaseDate: "2022",
            screenSize: nil,
            resolution: "",
            processor: "Apple M1 Max / M1 Ultra",
            camera: nil,
            description: "High-performance desktop designed for professionals, supporting multi-monitor setups and powerful computing."
        ),
        ProductItem(
            imageName: "macbook_air_2022_img",
            title: "MacBook Air (2022, M2)",
            releaseDate: "2022",
            screenSize: "13.6-inch",
            resolution: "2560x1664 (Liquid Retina)",
            processor: "Apple M2",
            camera: "1080p FaceTime Camera",
            description: "Redesigned MacBook Air, thinner and lighter, supports MagSafe charging and higher-resolution display."
        ),
        ProductItem(
            imageName: "mac_mini_2023_img",
            title: "Mac mini (2023)",
            releaseDate: "2023",
            screenSize: nil,
            resolution: "",
            processor: "Apple M2 / M2 Pro",
            camera: nil,
            description: "Upgraded Mac mini with M2 and M2 Pro configurations, further enhancing performance."
        ),
        ProductItem(
            imageName: "macbook_pro_15_2023_img",
            title: "MacBook Pro (15-inch, 2023)",
            releaseDate: "2023",
            screenSize: "15.3-inch",
            resolution: "3200x2136 (Liquid Retina XDR)",
            processor: "Apple M2 Pro / M2 Max",
            camera: "1080p FaceTime Camera",
            description: "New 15-inch model, filling the gap between 14 and 16-inch models, ideal for professional creators."
        ),
        ProductItem(
            imageName: "macbook_air_2023_m3_img",
            title: "MacBook Air (2023, M3)",
            releaseDate: "2023",
            screenSize: "13.6-inch",
            resolution: "2560x1664 (Liquid Retina)",
            processor: "Apple M3",
            camera: "1080p FaceTime Camera",
            description: "Features a Liquid Retina display, MagSafe 3 charging port, WiFi 6E, and Bluetooth 5.3, offering exceptional performance and portability."
        ),
        ProductItem(
            imageName: "macbook_pro_2023_m3_pro_img",
            title: "MacBook Pro (2023, M3 Pro / M3 Max)",
            releaseDate: "2023",
            screenSize: "16.2-inch",
            resolution: "3456x2234 (Liquid Retina XDR)",
            processor: "Apple M3 Pro / M3 Max",
            camera: "1080p FaceTime Camera",
            description: "Equipped with a Liquid Retina XDR display, 120Hz refresh rate, Thunderbolt 4 ports, WiFi 6, and Bluetooth 5.3. Supports up to 36GB unified memory and 1TB SSD, designed for high-performance tasks."
        ),
        ProductItem(
            imageName: "mac_pro_2023_img",
            title: "Mac Pro (2023)",
            releaseDate: "2023",
            screenSize: nil,
            resolution: "",
            processor: "Apple M2 Ultra",
            camera: nil,
            description: "Modular high-end workstation with M2 Ultra chip, suitable for extreme computing tasks and professional content creation."
        ),
        ProductItem(
            imageName: "macbook_pro_14_2024_m4_img",
            title: "MacBook Pro (2024, M4)",
            releaseDate: "2024",
            screenSize: "14.2-inch",
            resolution: "3024x1964 (Liquid Retina XDR)",
            processor: "Apple M4",
            camera: "1080p FaceTime Camera",
            description: "Comes standard with 16GB unified memory, configurable up to 32GB. Features Liquid Retina XDR display, Thunderbolt 4 ports, WiFi 6, and Bluetooth 5.3, ideal for entrepreneurs, students, and creators."
        ),
        ProductItem(
            imageName: "macbook_pro_14_2024_m4_pro_img",
            title: "MacBook Pro (2024, M4 Pro / M4 Max)",
            releaseDate: "2024",
            screenSize: "14.2-inch",
            resolution: "3024x1964 (Liquid Retina XDR)",
            processor: "Apple M4 Pro",
            camera: "1080p FaceTime Camera",
            description: "Comes standard with 16GB unified memory, configurable up to 36GB. Equipped with Thunderbolt 5 ports, offering transfer speeds up to 120Gb/s, significantly enhancing external storage and expansion capabilities."
        )
    ]
    
    var body: some View {
        ProductView(title: "Mac", items: items)
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
    MacView()
}
