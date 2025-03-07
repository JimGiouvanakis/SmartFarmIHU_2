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
    
    @State var menuSelection: MenuSelection = .home
    
    @State var openSheet: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                HeaderView(menuSelection: $menuSelection)
                    .padding(.top,50)
                
                Spacer()
            }
            
            ScrollView {
                VStack {
                    if menuSelection == .home {
                        HomeView(menuSelection: $menuSelection, openSheet: $openSheet)
                    } else if menuSelection == .information {
                        InformationView()
                    } else if menuSelection == .team {
                        TeamView()
                    }                }
            }
            CustomTabView(menuSelection: $menuSelection)
        }
        .padding(10)
        .ignoresSafeArea()
        .background(.white)
        .sheet(isPresented: $openSheet) {
            WebView()
                .ignoresSafeArea()
        }
    }
}

#Preview {
    LobbyView()
}
