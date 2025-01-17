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
            
            ScrollView {
                VStack {
                    if menuSelection == .home {
                        HomeView()
                    } else if menuSelection == .information {
                        InformationView()
                    } else if menuSelection == .team {
                        TeamView()
                    }
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
