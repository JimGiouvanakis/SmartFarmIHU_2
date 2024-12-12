//
//  DropDownMenyViewModel.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 12/12/24.
//

import Foundation
import SwiftUI

class DropDownMenyViewModel: ObservableObject {
    
    @Published var showItem1:Bool = false
    @Published var showItem2:Bool = false
    @Published var showItem3:Bool = false
    
    func addDelay() {
        withAnimation {
            self.showItem1.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            withAnimation {
                self.showItem2.toggle()
            }
//            self.showItem2.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            withAnimation {
                self.showItem3.toggle()
            }
//            self.showItem3.toggle()
        }
    }
}
