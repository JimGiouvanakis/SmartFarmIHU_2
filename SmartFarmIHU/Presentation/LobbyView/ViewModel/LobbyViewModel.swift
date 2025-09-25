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
    
    @Published var showModal: Bool = false
    
    @Published var showLanguButton: Bool = false
    @Published var showPrivacyButton: Bool = false
    
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
    
    
    func addDelay() {
        withAnimation {
            self.showLanguButton.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
            withAnimation {
                self.showPrivacyButton.toggle()
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
