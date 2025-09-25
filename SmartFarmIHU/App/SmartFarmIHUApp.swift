//
//  SmartFarmIHUApp.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 11/12/24.
//

import SwiftUI

@main
struct SmartFarmIHUApp: App {
    
    @StateObject private var appViewModel: AppViewModel = .init()
    
    var body: some Scene {
        WindowGroup {
            SplashView()
                .environment(\.appViewModel, appViewModel)
        }
    }
}
