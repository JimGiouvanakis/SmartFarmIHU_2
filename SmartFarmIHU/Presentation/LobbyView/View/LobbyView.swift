//
//  LobbyView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 11/12/24.
//

import Foundation
import SwiftUI

struct LobbyView: View {
    
    // MARK: - Properties
    
    @StateObject var viewModel = LobbyViewModel()
    
    @State var menuSelection: MenuSelection = .home
    @Binding var resetApp: Bool
    
    @State var openSheet: Bool = false
    
    // MARK: - View
    
    var body: some View {
        ZStack {
            self.makeMainView()
        }
    }
    
    // MARK: - ViewBuilders
    
    private func makeMainView() -> some View {
        VStack {
            
            HStack {
                HeaderView(resetApp: $resetApp, menuSelection: $menuSelection)
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
    
    // MARK: - Methods
    
    // ..
    
}

#Preview {
    LobbyView(resetApp: .constant(true))
}
