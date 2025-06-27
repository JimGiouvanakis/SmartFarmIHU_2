//
//  LocalizableProtocol.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 25/6/25.
//

import Foundation

protocol LocalizableProtocol {
    var tableName: String { get }
    var localized: String { get }
}

extension LocalizableProtocol where Self: RawRepresentable, Self.RawValue == String {
    var localized: String {
        return rawValue.localized(tableName: tableName)
    }
}
