//
//  SmartFarmingView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/12/24.
//

import SwiftUI

struct SmartFarmingView: View {
    
    var body: some View {
        
        VStack {
            ForEach(AppTextConstants.smartFarmingList.indices, id: \.self) { index in
                HStack {
                    VStack {
                        Text(AppTextConstants.bulletPoint)
                        Spacer()
                    }
                    Text(AppTextConstants.smartFarmingList[index])
                }
                
            }
            
         Spacer()
            VStack(spacing: 10) {
                Text(AppTextConstants.smartFarmText1)
                
                Spacer()
                
                Text(AppTextConstants.smartFarmText2)
                
                Spacer()
                
                Text(AppTextConstants.smartFarmText3)
            }
            
        }
        .padding(.leading)
        .foregroundColor(Color.App.gray)
    }
}

#Preview {
    SmartFarmingView()
}
