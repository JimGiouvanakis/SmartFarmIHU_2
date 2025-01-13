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
    
    func changeSide() -> Bool {
        if isLeft == true {
            isLeft.toggle()
            return true
        } else {
            isLeft.toggle()
            return false
        }
    }
}

struct TeamStuct: Hashable {
    var image:String
    var name: String
    var academicRole: String
    var projectRole: String
    var side: Bool
}
