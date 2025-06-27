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
    
    private var teamUseCase = TeamUseCase()
    
    var data: [LobbyView.UIModel] = []
    
    func setup() async {
        if data.isEmpty {
            let result = await self.teamUseCase.execute()
            switch result {
            case .success(let data):
                self.data = self.makeTeamUImodel(data)
            case .failure(let error):
                print("error \(error)")
            }
        }
    }
}

extension LobbyViewModel {
    
    typealias UIMapper = LobbyView.Mapper
    
    private func makeTeamUImodel(_ data: [TeamModel]) -> [LobbyView.UIModel] {
        return UIMapper().mapToUIModel(from: data)
    }
}
