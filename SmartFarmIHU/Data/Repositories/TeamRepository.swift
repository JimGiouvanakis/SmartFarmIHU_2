//
//  TeamRepository.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 27/6/25.
//

import Foundation

actor TeamRepository: TeamRepositoryProtocol {
    
    // MARK: - Properties
    
    // ...
    
    // MARK: - Methods

    func getTeamData() async throws -> [TeamModel] {
        do {
            let mappedData = TeamMapper().getTeamData()
            return mappedData
        }
        catch {
            throw error
        }
    }
}
