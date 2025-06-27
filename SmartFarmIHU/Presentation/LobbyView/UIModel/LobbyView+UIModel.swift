//
//  LobbyView+UIModel.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 27/6/25.
//

import Foundation

extension LobbyView {
    
    struct UIModel: Identifiable, Equatable {
        
        // MARK: - Properties
        
        var id: String
        var image: String
        var name: String
        var academicRole: String
        var projectRole: String
        var side: Bool
        
        // MARK: - Initialize
        
        init(
            id: String,
            image: String,
            name: String,
            academicRole: String,
            projectRole: String,
            side: Bool
        ) {
            self.id = id
            self.image = image
            self.name = name
            self.academicRole = academicRole
            self.projectRole = projectRole
            self.side = side
        }
        
        // MARK: - Methods
        
        // ..
    }
}
