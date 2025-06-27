//
//  AppLanguage.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 25/6/25.
//

import Foundation

enum AppLanguage: String, CaseIterable, Identifiable {
    case en = "en"
    case el = "el"
    
    var id: String { rawValue }
    
    var displayName: String {
        switch self {
        case .en:
            return "English"
        case .el:
            return "Ελληνικά"
        }
    }
}
