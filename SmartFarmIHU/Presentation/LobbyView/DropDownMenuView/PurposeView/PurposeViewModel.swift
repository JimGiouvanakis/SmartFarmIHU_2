//
//  PurposeViewModel.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 12/12/24.
//

import Foundation
import SwiftUI


class PurposeViewModel: ObservableObject {
    
    @Published var buttonTapped:ButtonTapped = .buttonDiseases
    
    @Published var buttonDiseasesTapped:Bool = true
    @Published var buttonSmartFarmingTapped:Bool = false
    @Published var buttonΤechniquesTapped:Bool = false
    @Published var buttonChartTapped:Bool = false
    @Published var buttonGrowthTapped:Bool = false
    @Published var buttonFindTapped:Bool = false
    @Published var buttonMethodologyTapped:Bool = false
    @Published var buttonDevelopingTapped:Bool = false
    
    func buttonTapped(button : ButtonTapped) {
        switch button {
        case .buttonDiseases:
            withAnimation {
                buttonTapped = .buttonDiseases
            }
        case .buttonSmartFarming:
            withAnimation {
                buttonTapped = .buttonSmartFarming
            }
        case .buttonΤechniques:
            withAnimation {
                buttonTapped = .buttonΤechniques
            }
        case .buttonChart:
            withAnimation {
                buttonTapped = .buttonChart
            }
        case .buttonGrowth:
            withAnimation {
                buttonTapped = .buttonGrowth
            }
        case .buttonFind:
            withAnimation {
                buttonTapped = .buttonFind
            }
        case .buttonMethodology:
            withAnimation {
                buttonTapped = .buttonMethodology
            }
        case .buttonDeveloping:
            withAnimation {
                buttonTapped = .buttonDeveloping
            }
        case .noView:
            buttonTapped = .noView
        }
    }
    
}


enum ButtonTapped {
    case buttonDiseases
    case buttonSmartFarming
    case buttonΤechniques
    case buttonChart
    case buttonGrowth
    case buttonFind
    case buttonMethodology
    case buttonDeveloping
    case noView
}
