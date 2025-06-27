//
//  TeamRepositoryProtocol.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 27/6/25.
//

import Foundation

protocol TeamRepositoryProtocol {
    func getTeamData() async throws -> [TeamModel]
}
