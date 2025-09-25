//
//  MenuSelection.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 27/6/25.
//

import Foundation

enum MenuSelection: String {
    case home
    case information
    case team
    
    var icon: String {
        switch self {
        case .home:        return "house"
        case .information: return "book.pages"
        case .team:    return "person.3"
        }
    }
}
