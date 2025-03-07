//
//  HomeViewModel.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 17/1/25.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published var isViewed: Bool = false
    
    func addDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            withAnimation {
                self.isViewed.toggle()
            }
        }
    }
}
