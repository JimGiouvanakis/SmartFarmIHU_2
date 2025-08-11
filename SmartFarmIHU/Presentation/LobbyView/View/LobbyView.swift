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
    
    @StateObject private var viewModel = LobbyViewModel()
    
    @StateObject private var monitor = Monitor()
    
    @State var menuSelection: MenuSelection = .home
    @Binding var resetApp: Bool
    
    @State var openSheet: Bool = false
    
    // MARK: - View
    
    var body: some View {
        ZStack {
            self.makeMainView()
        }
        .onAppear {
            self.setup()
        }
        .fullScreenCover(isPresented: $monitor.noInternet) {
            NoNetworkView()
        }
    }
    
    // MARK: - ViewBuilders
    
    private func makeMainView() -> some View {
        VStack {
            
            HeaderView(resetApp: $resetApp, menuSelection: $menuSelection)
            
            ScrollView(showsIndicators: false) {
                VStack {
                    if menuSelection == .home {
                        HomeView(menuSelection: $menuSelection, openSheet: $openSheet)
                    } else if menuSelection == .information {
                        InformationView()
                    } else if menuSelection == .team {
                        TeamView(teamMembers: viewModel.data)
                    }
                }
            }
            
            CustomTabView(menuSelection: $menuSelection)
        }
        .padding(10)
        .background(.white)
        .sheet(isPresented: $openSheet) {
            ZStack(alignment: .top) {
                
                WebView()
                    .ignoresSafeArea()
                
                HStack {
                    
                    Spacer()
                    
                    Button {
                        openSheet.toggle()
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color.blue)
                            .padding()
                            .bold()
                    }
                    .padding(8)
                }
            }
        }
    }
    
    // MARK: - Methods
    
    private func setup() {
        Task { await viewModel.setup() }
    }
    
}

#Preview {
    LobbyView(resetApp: .constant(true))
}
