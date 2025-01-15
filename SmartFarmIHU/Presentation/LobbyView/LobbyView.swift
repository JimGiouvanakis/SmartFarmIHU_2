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
        VStack {
            
            HStack {
                HeaderView(dropDownmenu: $dropDownmenu, buttonIcon: $dropDownmenu, menuSelection: $menuSelection)
                    .padding(.top,50)
                
                Spacer()
            }
            

                
            if dropDownmenu {
                DropDownMenuView(selection: $menuSelection, dropDownmenu: $dropDownmenu, menuIcon: $viewModel.buttonIcon)
//                    .padding(.trailing,10)
                    .padding(.leading,80)
                    .frame(width: 300,height: 100)
            }
            
            ScrollView {
                VStack {
//                    HStack {
//                        HeaderView()
//                            .padding(.top,50)
//                        
//                        Spacer()
//                    }
                    
                    if menuSelection == .home {
                        HomeView()
                    } else if menuSelection == .purpose {
                        PurposeView()
                    } else if menuSelection == .team {
                        TeamView()
                    } else if menuSelection == .package {
                        PackageView()
                    } else if menuSelection == .result {
                        //                        ResultView()
                    } else if menuSelection == .contract {
                        ContractView()
                    } else if menuSelection == .english {
                        HomeView()
                    }
                    
//                    LobbyFooterView()
//                        .frame(width: 400,height: 200)
                }
            }

            CustomTabView(menuSelection: $menuSelection)

               
        }
        .padding(10)
        .ignoresSafeArea()
        .background(.white)
    }
}

#Preview {
    LobbyView()
}
