//
//  StringExtension.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 25/6/25.
//

import Foundation
import SwiftUI

extension String {
    func localized(tableName: String = "Localizable") -> String {
        return Bundle.localizedBundle().localizedString(forKey: self, value: nil, table: nil)
    }
}
