//
//  LobbyView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 11/12/24.
//

import Foundation
import SwiftUI

struct LobbyView: View {
    
    @StateObject var viewModel = LobbyViewModel()

    @State var dropDownmenu:Bool = false
    @State var menuSelection: MenuSelection = .home
    
    var body: some View {
        HStack {
            Image("IHUIcon")
                .resizable()
                .frame(width: 150, height: 50)
            Spacer()
            
            Button(action: {
                viewModel.buttonIcon2.toggle()
                withAnimation {
                    dropDownmenu.toggle()
                }
            }, label: {
                Image(viewModel.buttonIcon2 ?  "CloseIcon" : "MenuBarIcon")
                    .resizable()
                    .frame(width: 50, height: 50)
            })
        }
        .padding(10)
        
        if dropDownmenu {
            DropDownMenuView(selection: $menuSelection, dropDownmenu: $dropDownmenu, menuIcon: $viewModel.buttonIcon2)
        }
        
        ScrollView {
            VStack {
                    if menuSelection == .home {
                            HomeView()
                    } else if menuSelection == .purpose {
                        PurposeView()
                    }
                    
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
