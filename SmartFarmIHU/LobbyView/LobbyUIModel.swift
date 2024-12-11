//
//  LobbyUIModel.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 11/12/24.
//

import Foundation
import SwiftUI

extension LobbyView {
    
    func changeIconofMenu() {
        if buttonIcon == "MenuBarIcon" {
            buttonIcon = "CloseIcon"
        }else {
            buttonIcon = "MenuBarIcon"
        }
    }
    
}
