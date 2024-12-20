//
//  AppViewModel.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 20/12/24.
//

import Foundation

class AppViewModel {
    
    static var shared = AppViewModel()
    private init() {}
    
    @Published var appLanguage: AppLanguage = .greek
}


enum AppLanguage {
    case greek
    case english
}
