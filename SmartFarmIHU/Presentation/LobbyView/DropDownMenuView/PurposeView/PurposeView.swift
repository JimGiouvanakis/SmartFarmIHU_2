//
//  PurposeView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 12/12/24.
//

import Foundation
import SwiftUI


struct PurposeView: View {
    
    @StateObject var viewModel = PurposeViewModel()
    
    
    var body: some View {
        ScrollView {
            VStack() {
                ZStack {
                    HStack {
                        Text(AppTextConstants.header)
                            .font(.title)
                            .foregroundColor(Color.black)
                            .padding(10)
                        
                        Spacer()
                        
                    }
                }
                .background(Color.App.headerGray)
                
                Group {
                    Text(AppTextConstants.headerTitle)
                        .font(.headline)
                        .foregroundColor(Color.App.green)
                    
                    Text(AppTextConstants.headerSubTittle)
                        .font(.headline)
                        .foregroundColor(Color.App.green)
                    
                    Image("DroneImage")
                        .resizable()
                        .frame(width: 350, height: 300)
                        .padding(.bottom)
                    
                    VStack {
                        buttonDiseases()
                        
                        buttonSmartFarming()
                        
                        buttonΤechniques()
                        
                        buttonChart()
                        
                        buttonGrowth()
                        
                        buttonFind()
                        
                        buttonMethodology()
                        
                        buttonDeveloping()
                    }
                    .border(Color.App.menuButtonGray, width: 0.5)
                }
                .padding(10)
            }
        }
    }
}

#Preview {
    PurposeView()
}
