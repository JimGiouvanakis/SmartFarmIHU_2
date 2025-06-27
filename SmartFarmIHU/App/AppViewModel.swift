//
//  AppViewModel.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 26/6/25.
//

import Foundation

class AppViewModel {
    
    static var shared = AppViewModel()
    private init() {}
    
    @Published var appLanguage: AppLanguage = {
        if let currentLangu = Locale.preferredLanguages.first {
            if currentLangu.contains("en") {
                return .en
            } else if currentLangu.contains("el") {
                return .el
            }
        }
        return .el
    }()
    
    func changeLangu() {
        if appLanguage == .el {
            appLanguage = .en
            Bundle.setLanguage(language: "en")
        } else {
            appLanguage = .el
            Bundle.setLanguage(language: "el")
        }
    }
}
