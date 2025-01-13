//
//  HeaderView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/1/25.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var dropDownmenu:Bool
    
    @Binding var buttonIcon: Bool
    
    var body: some View {
        HStack{
            Image("MainPhoto")
                .resizable()
                .frame(width: 50,height: 50)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.clear)
                    
                )
            VStack(spacing: 0) {
                Text("SmartFarm")
                    .font(.system(size: 25))
                    .foregroundColor(Color.App.green)
                
                Text("Powerd by IHU")
                    .font(.system(size: 15))
                    .foregroundColor(Color.App.green)
                    .opacity(0.5)
                
            }
            
            Spacer()
            
            Button(action: {
                dropDownmenu.toggle()
            }) {
                Image(systemName: buttonIcon ? "globe.badge.chevron.backward" : "globe")
                    .resizable()
                    .frame(width: buttonIcon ?  35 : 30 ,height: buttonIcon ? 35 : 30)
                    .foregroundColor(Color.App.green)
                    .opacity(0.8)
            }
            .padding(.trailing)
        }
    }
}

#Preview {
    LobbyView()
}
