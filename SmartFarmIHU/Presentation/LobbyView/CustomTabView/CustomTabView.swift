//
//  CustomTabView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 10/1/25.
//

import SwiftUI

struct CustomTabView: View {
    
    @Binding var menuSelection: MenuSelection
    
    var body: some View {
        HStack {
                Button(action: {
                    menuSelection = .home
                }) {
                    VStack {
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 30 , height: 30)
                    
                    Text(AppTextConstants.home)
                }
                    .bold()
                    .foregroundColor(menuSelection == .home ? Color.App.buttonTappedGreen : Color.gray)
                    .padding(.trailing,30)
            }
            
            Button(action: {
                menuSelection = .purpose
            }) {
                VStack {
                    Image(systemName: "book")
                        .resizable()
                        .frame(width: 30 , height: 30)
                    
                    Text(AppTextConstants.information)
                }
                .bold()
                .foregroundColor(menuSelection == .purpose ? Color.App.buttonTappedGreen : Color.gray)
                .padding(.trailing,15)
            }
            
            Button(action: {
                menuSelection = .team
            }) {
                VStack {
                    Image(systemName: "person.3")
                        .resizable()
                        .frame(width: 50 , height: 30)
                    
                    Text(AppTextConstants.team)
                }
                .bold()
                .foregroundColor(menuSelection == .team ? Color.App.buttonTappedGreen : Color.gray)
            }
        }
        .frame(width: 400,height: 65)
        .background(Color.white)

    }

}

#Preview {
    LobbyView()
}
