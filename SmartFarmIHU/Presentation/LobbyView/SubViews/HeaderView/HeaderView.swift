//
//  HeaderView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/1/25.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var menuSelection: MenuSelection
    
    var body: some View {
        Button(action: {
            menuSelection = .home
        },
               label: {
            Image(AppTextConstants.AppIcon)
                .resizable()
                .frame(width: 50,height: 50)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.clear)
                )
            VStack(spacing: 0) {
                Text(AppTextConstants.AppTitle)
                    .font(.system(size: 25,weight: .bold))
                    .foregroundColor(Color.App.green)
                
                Text(AppTextConstants.AppSubTittle)
                    .font(.system(size: 15,weight: .bold))
                    .foregroundColor(Color.App.green)
                .opacity(0.5)                }
        })
    }
}

#Preview {
    LobbyView()
}
