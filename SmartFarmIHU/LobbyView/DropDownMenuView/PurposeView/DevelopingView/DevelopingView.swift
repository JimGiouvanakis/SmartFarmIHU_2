//
//  DevelopingView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/12/24.
//

import SwiftUI

struct DevelopingView: View {
    var body: some View {
        VStack {
            VStack {
                Text(AppTextConstants.developingViewHeader)
                    .bold()
                
                Spacer()
            }
            
            Spacer()
            
            ForEach(AppTextConstants.developingViewList.indices, id: \.self) { index in
                HStack {
                    VStack {
                        Text(AppTextConstants.bulletPoint)
                        
                        Spacer()
                    }
                    Text(AppTextConstants.developingViewList[index])
                    
                    Spacer()
                }
            }
            .padding(.leading)
            
            Spacer()
            
            HStack {
                Spacer()
                
                Text(AppTextConstants.developingViewExample)
                
                Spacer()
            }
            .padding()
            
            Image("DevelopingViewImage")
                .resizable()
                .frame(width: 300, height: 300)
            
            Spacer()
            
            HStack {
                Spacer()
                
                Text(AppTextConstants.developingViewImageText)
                
                Spacer()
            }
            .padding()
            
            Text(AppTextConstants.developingViewText)
                .padding(.leading)
            
        }
        .foregroundColor(Color.App.gray)
        .padding(.leading)
    }
}

#Preview {
    DevelopingView()
}
