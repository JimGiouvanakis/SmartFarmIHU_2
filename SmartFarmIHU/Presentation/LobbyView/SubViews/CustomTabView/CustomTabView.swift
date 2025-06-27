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
        HStack(spacing: 20) {
            
            ZStack {
                Color.white
                
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
            }
            
            ZStack {
                Color.white
                
                Button(action: {
                    menuSelection = .information
                }) {
                    VStack {
                        Image(systemName: "book.pages")
                            .resizable()
                            .frame(width: 30 , height: 30)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(menuSelection == .information ?  Color.App.buttonTappedGreen : Color.clear)
                            .frame(width: 80, height: 50)
                    )
                    
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 40)
                }
            }
            
            ZStack {
                Color.white
                
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
        }
        .padding(.horizontal, 25)
        .frame(width: 400,height: 50)
        .background(Color.white)
        
    }
}

#Preview {
    LobbyView(resetApp: .constant(true))
}
