//
//  LobbyViewModel.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 12/12/24.
//

import Foundation
import SwiftUI

class LobbyViewModel: ObservableObject {
    
    @Published var buttonIcon: Bool = false
}

enum MenuSelection {
    case home
    case information
    case team
}
