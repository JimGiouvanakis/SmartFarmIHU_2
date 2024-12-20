//
//  DropDownMenuViewModel.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 12/12/24.
//

import Foundation
import SwiftUI

class DropDownMenuViewModel: ObservableObject {
    
    @Published var showHomeButton:Bool = false
    @Published var showPurposeButton:Bool = false
    @Published var showTeamButton:Bool = false
    @Published var showItem4:Bool = false
    @Published var showResultButton:Bool = false
    @Published var showContractButton:Bool = false
    @Published var showEnglishButton:Bool = false
    
    @Published var homeButtonTapped:Bool = false
    @Published var purposeButtonTapped:Bool = false
    @Published var teamButtonTapped:Bool = false
    @Published var packageButtonTapped:Bool = false
    @Published var resultButtonTapped:Bool = false
    @Published var contractButtonTapped:Bool = false
    @Published var englishButtonTapped:Bool = false
    
    func addDelay() {
        withAnimation {
            self.showHomeButton.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            withAnimation {
                self.showPurposeButton.toggle()
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            withAnimation {
                self.showTeamButton.toggle()
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            withAnimation {
                self.showItem4.toggle()
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            withAnimation {
                self.showResultButton.toggle()
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            withAnimation {
                self.showContractButton.toggle()
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            withAnimation {
                self.showEnglishButton.toggle()
            }
        }
    }
    
    func changeLanguage() {
        if AppViewModel.shared.appLanguage == .english {
            AppViewModel.shared.appLanguage = .greek
        } else {
            AppViewModel.shared.appLanguage = .english
        }
    }
}
