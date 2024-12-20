//
//  GrowthView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/12/24.
//

import SwiftUI

struct GrowthView: View {
    var body: some View {
        VStack {
            Text(AppTextConstants.growhthHeader)
                .padding(.trailing)
            
            Spacer()
            
            ForEach(AppTextConstants.growhthList.indices, id: \.self) { index in
                HStack {
                    VStack {
                        Text(AppTextConstants.bulletPoint)
                        
                        Spacer()
                    }
                    Text(AppTextConstants.growhthList[index])
                    
                    Spacer()
                }
                .padding(.leading)
            }
            
            Image("GrowthImage1")
                .resizable()
            
            Image("GrowthImage2")
                .resizable()
        }
        .foregroundColor(Color.App.gray)
    }
}

#Preview {
    GrowthView()
}
