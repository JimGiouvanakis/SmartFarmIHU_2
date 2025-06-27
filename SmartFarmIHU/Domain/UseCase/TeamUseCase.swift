//
//  TeamUseCase.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 27/6/25.
//

import Foundation

protocol TeamUseCaseProtocol: Sendable {
    @discardableResult
    func execute() async -> Result<[TeamModel], TeamUseCaseError>
}

enum TeamUseCaseError: Swift.Error {
    case unableToRetrieveData(Swift.Error?)
    case appError(ErrorEnum)
}

struct TeamUseCase: TeamUseCaseProtocol, Sendable {
    
    // MARK: - Properties

    var repository = TeamRepository()
    
    // MARK: - Methods
    
    func execute() async -> Result<[TeamModel], TeamUseCaseError> {
        do {
            let data = try await repository.getTeamData()
            return .success(data)
        } catch {
            return .failure(.unableToRetrieveData(error))
        }
    }
}
