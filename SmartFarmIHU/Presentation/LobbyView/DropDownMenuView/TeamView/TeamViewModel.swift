//
//  TeamViewModel.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/12/24.
//

import Foundation
import SwiftUI


class TeamViewModel: ObservableObject {
    
    var isLeft: Bool = true
    
    var delay: Double = 0
    
    func changeSide() -> Bool {
        if isLeft == true {
            isLeft.toggle()
            return true
        } else {
            isLeft.toggle()
            return false
        }
    }
    
    func addDelay() -> Double {
        delay += 0.1
        return delay
    }
}

struct TeamStuct: Hashable {
    var image:String
    var name: String
    var academicRole: String
    var projectRole: String
    var side: Bool
}
