//
//  LobbyView+Mapper.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 27/6/25.
//

import Foundation

extension LobbyView {
    
    struct Mapper {
        
        typealias Domain = [TeamModel]
        typealias UIModel = [LobbyView.UIModel]
        
        // MARK: - Methods
        
        func mapToUIModel(
            from domain: Domain
        ) -> UIModel {
            return domain.compactMap { model in
                self.makeItem(item: model)
            }
        }
        
        func makeItem(item: TeamModel) -> LobbyView.UIModel {
            return .init(
                id: item.id ?? UUID().uuidString,
                image: item.image ?? "",
                name: item.name ?? "",
                academicRole: item.academicRole ?? "",
                projectRole: item.projectRole ?? "",
                side: item.side ?? false
            )
        }
    }
}
