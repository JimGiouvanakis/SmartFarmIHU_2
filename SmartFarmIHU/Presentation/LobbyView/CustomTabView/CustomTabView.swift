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
        HStack(spacing: 40) {
                Button(action: {
                    menuSelection = .home
                }) {
                    VStack {
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 30 , height: 30)
                }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(menuSelection == .home ?  Color.App.buttonTappedGreen : Color.clear)
                            .frame(width: 80, height: 50)
                    )
                    
                    .foregroundColor(Color.black)
                    .padding(.leading,10)
            }
            
            Button(action: {
                menuSelection = .purpose
            }) {
                VStack {
                    Image(systemName: "book.pages")
                        .resizable()
                        .frame(width: 30 , height: 30)
                }
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(menuSelection == .purpose ?  Color.App.buttonTappedGreen : Color.clear)
                        .frame(width: 80, height: 50)
                )
                
                .foregroundColor(Color.black)
                .padding(.horizontal, 40)
            }
            
            Button(action: {
                menuSelection = .team
            }) {
                VStack {
                    Image(systemName: "person.3")
                        .resizable()
                        .frame(width: 60 , height: 30)
                
                }
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(menuSelection == .team ?  Color.App.buttonTappedGreen : Color.clear)
                        .frame(width: 80, height: 50)
                )
                
                .foregroundColor(Color.black)
                .padding(.trailing,10)
            }
        }
        .frame(width: 400,height: 50)
        .background(Color.white)

    }

}

#Preview {
    LobbyView()
}
