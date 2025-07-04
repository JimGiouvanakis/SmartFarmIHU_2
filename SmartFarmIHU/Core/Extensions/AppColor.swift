//
//  AppColor.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 12/12/24.
//

import SwiftUI

extension Color {
    
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a: UInt64
        let r: UInt64
        let g: UInt64
        let b: UInt64
        switch hex.count {
        case 3:  // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF)  * 17, (int & 0xF) * 17)
        case 6:  // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:  // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
    
    struct App {
        
        // MARK: - Main App Colors
        
        static var green: Color {
            Color(hex: "#0e8747")
        }
        static var gray: Color {
            Color(hex: "#7a7a7a")
        }
        
        static var lobbyFooterBlue1: Color {
            Color(hex: "#313b48")
        }
        
        static var lobbyFooterBlue2: Color {
            Color(hex: "#28313d")
        }
        
        static var headerGray: Color {
            Color(hex: "#dcdce1")
        }
        
        // MARK: - Info View Colors
        
        static var backgroundGreen: Color {
            Color(hex: "#6b9b6b")
        }
        
        static var backgroundGreen2: Color {
            Color(hex: "#b2c9ad")
        }
        
        static var backgroundGreen3: Color {
            Color(hex: "#abd5b7")
        }
        
        
        // MARK: - Button Colors
        
        static var buttonBlue: Color {
            Color(hex: "#0000ff")
        }
        
        static var buttonTappedGreen: Color {
            Color(hex: "#22b063")
        }
        
        static var menuButtonGray: Color {
            Color(hex: "#515d6b")
        }
    }
}
