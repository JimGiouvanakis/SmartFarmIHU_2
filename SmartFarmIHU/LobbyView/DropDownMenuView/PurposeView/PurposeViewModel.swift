//
//  PurposeViewModel.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 12/12/24.
//

import Foundation
import SwiftUI


class PurposeViewModel: ObservableObject {
    
    @Published var buttonDiseasesTapped:Bool = false
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
                buttonDiseasesTapped.toggle()
            }
        case .buttonSmartFarming:
            withAnimation {
                buttonSmartFarmingTapped.toggle()
            }
        case .buttonΤechniques:
            withAnimation {
                buttonΤechniquesTapped.toggle()
            }
        case .buttonChart:
            withAnimation {
                buttonChartTapped.toggle()
            }
        case .buttonGrowth:
            withAnimation {
                buttonGrowthTapped.toggle()
            }
        case .buttonFind:
            withAnimation {
                buttonFindTapped.toggle()
            }
        case .buttonMethodology:
            withAnimation {
                buttonMethodologyTapped.toggle()
            }
        case .buttonDeveloping:
            withAnimation {
                buttonDevelopingTapped.toggle()
            }
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
}
