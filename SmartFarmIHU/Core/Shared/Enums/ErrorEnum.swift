//
//  ErrorEnum.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 27/6/25.
//

import Foundation

enum ErrorEnum: Error, Identifiable, Equatable {
    
    static func == (lhs: ErrorEnum, rhs: ErrorEnum) -> Bool {
        lhs.id == rhs.id
    }
    
    var id: String { UUID().uuidString }
    
    case generic
}
