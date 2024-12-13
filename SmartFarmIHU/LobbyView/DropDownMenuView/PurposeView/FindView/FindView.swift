//
//  FindView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/12/24.
//

import SwiftUI

struct FindView: View {
    var body: some View {
        
        VStack {
            Text(AppTextConstants.findViewHeader)
            
            Spacer()
            
            ForEach(AppTextConstants.findViewList.indices, id: \.self) { index in
                HStack {
                    VStack {
                        Text(AppTextConstants.bulletPoint)
                        
                        Spacer()
                    }
                    Text(AppTextConstants.findViewList[index])
                    
                    Spacer()
                }
            }
            .padding(.leading)
            
            Spacer()

            Text(AppTextConstants.findViewText)
            
            Spacer()
            
            HStack {
                VStack {
                    Text(AppTextConstants.bulletPoint)
                    
                    Spacer()
                }
                Text(AppTextConstants.findViewItem)
                
                Spacer()
            }
            .padding(.leading)
           
           Image("FindViewImage1")
                .resizable()
                .frame(width: 300,height: 300)
            
            Image("FindViewImage2")
                 .resizable()
                 .frame(width: 300,height: 300)
            
            Image("FindViewImage3")
                 .resizable()
                 .frame(width: 300,height: 300)
            
            Image("FindViewImage4")
                 .resizable()
                 .frame(width: 300,height: 300)
        }
        .foregroundColor(Color.App.gray)
        .padding([.leading,.trailing])
    }
}

#Preview {
    FindView()
}
