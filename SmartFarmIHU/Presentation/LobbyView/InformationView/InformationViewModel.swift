//
//  InformationViewModel.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 16/1/25.
//

import Foundation
import SwiftUI

class InformationViewModel: ObservableObject {
    
    @Published var showFirstItem: Bool = false
    @Published var showSecondItem: Bool = false
    @Published var showThirdItem: Bool = false
    @Published var showFourthItem: Bool = false
    @Published var showFifthItem: Bool = false
    @Published var showSixthItem: Bool = false
    @Published var showSeventhItem: Bool = false
    @Published var showEighthItem: Bool = false
    
    func addDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            withAnimation {
                self.showFirstItem.toggle()
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            withAnimation {
                self.showSecondItem.toggle()
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
            withAnimation {
                self.showThirdItem.toggle()
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            withAnimation {
                self.showFourthItem.toggle()
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation {
                self.showFifthItem.toggle()
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
            withAnimation {
                self.showSixthItem.toggle()
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.4) {
            withAnimation {
                self.showSeventhItem.toggle()
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
            withAnimation {
                self.showEighthItem.toggle()
            }
        }
    }
}
