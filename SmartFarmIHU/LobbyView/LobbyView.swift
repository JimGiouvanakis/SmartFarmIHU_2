//
//  LobbyView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 11/12/24.
//

import Foundation
import SwiftUI

struct LobbyView: View {
    
    @State var buttonIcon:String = "MenuBarIcon"
    @State var dropDownmenu:Bool = false
    
    
    var body: some View {
        HStack {
            Image("IHUIcon")
                .resizable()
                .frame(width: 150, height: 50)
            Spacer()
            
            Button(action: {
                changeIconofMenu()
                dropDownmenu.toggle()
//                print("1231")
            }, label: {
                Image(buttonIcon)
                    .resizable()
                    .frame(width: 50, height: 50)
            })
            
//            Button(action: {
//                
//            }, label: {
//                Image(systemName: "magnifyingglass")
//                    .resizable()
//                    .frame(width: 30, height: 30)
//                    .foregroundColor(.black)
//                    .opacity(0.5)
//            })
            
        }
        .padding(10)
        
        ScrollView {
            VStack {
                Group {
                    if dropDownmenu {
                        //                    let menu = DropDownMenuView()
                    }
                    
                    Image("MainPhoto")
                        .resizable()
                        .frame(width: 350, height: 300)
                        .padding(.bottom)
                    
                    Text(AppTextConstants.LobbyHeader)
                        .font(.headline)
                        .foregroundColor(Color.App.green)
                    
                    Button(action: {
                        
                    }, label: {
                        Text(AppTextConstants.LobbyButton)
                        
                    })
                    .buttonStyle(.borderedProminent)
                    .tint(Color.App.blue)
                    .foregroundColor(.white)
                    .buttonBorderShape(.roundedRectangle)
                    
                    Text(AppTextConstants.LobbyButtonSubTittle)
                        .font(.headline)
                        .foregroundColor(Color.App.green)
                        .padding(.bottom)
                    
                    TextView()
                }
                .padding([.leading,.trailing])
                
                LobbyFooterView()
                    .frame(width: 400,height: 200)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    LobbyView()
}
