//
//  LobbyViewModel.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 12/12/24.
//

import Foundation
import SwiftUI

class LobbyViewModel: ObservableObject {
    
//    @Published var buttonIcon: String = "globe"
    @Published var buttonIcon: Bool = false
    
//    func changeIconofMenu() {
//        if buttonIcon == "globe" {
//            buttonIcon = "globe.badge.chevron.backward"
//        } else {
//            buttonIcon = "globe"
//        }
//    }
    
}

enum MenuSelection {
    case home
    case purpose
    case team
    case package
    case result
    case contract
    case english
}
