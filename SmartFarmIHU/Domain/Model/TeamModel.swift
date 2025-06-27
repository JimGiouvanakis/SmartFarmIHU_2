//
//  TeamModel.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 27/6/25.
//

import Foundation

struct TeamModel {
    
    // MARK: - Properties
    
    var id: String?
    var image: String?
    var name: String?
    var academicRole: String?
    var projectRole: String?
    var side: Bool?
    
    // MARK: - Initialization
    
    init(
        id: String? = nil,
        image: String? = nil,
        name: String? = nil,
        academicRole: String? = nil,
        projectRole: String? = nil,
        side: Bool? = nil
    ) {
        self.id = id
        self.image = image
        self.name = name
        self.academicRole = academicRole
        self.projectRole = projectRole
        self.side = side
    }
}


