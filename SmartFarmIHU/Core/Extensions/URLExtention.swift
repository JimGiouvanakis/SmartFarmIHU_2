//
//  URLExtention.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 8/7/25.
//

import Foundation

extension URL {
    init(staticString: StaticString) {
        guard let url = Self(string: "\(staticString)") else {
            fatalError("Invalid static URL string: \(staticString)")
        }

        self = url
    }
}
