//
//  LobbyViewModel.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 12/12/24.
//

import Foundation
import SwiftUI

class LobbyViewModel: ObservableObject {
    
    @Published var buttonIcon: String = "MenuBarIcon"
    @Published var buttonIcon2: Bool = false
    
    
    func changeIconofMenu() {
        if buttonIcon == "MenuBarIcon" {
            buttonIcon = "CloseIcon"
        }else {
            buttonIcon = "MenuBarIcon"
        }
    }
    
    func menuBarButtonTapped() {
        
    }
    
    
}

enum MenuSelection {
    case home
    case purpose
    case team
    case package
}
