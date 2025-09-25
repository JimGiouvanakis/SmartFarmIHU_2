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
    
    @Environment(\.appViewModel) private var appViewModel
    
    @StateObject private var viewModel: LobbyViewModel = .init()
    
    @StateObject private var monitor = Monitor()
    
    @State var menuSelection: MenuSelection = .home
    @Binding var resetApp: Bool
    
    @State var openWebView: Bool = false
    @State var openPrivacy: Bool = false
    
    // MARK: - View
    
    var body: some View {
        ZStack {
            self.makeMainView()
        }
        .onAppear {
            self.setup()
        }
        .onChange(of: viewModel.showModal) { _ in
            viewModel.addDelay()
        }
        .fullScreenCover(isPresented: $monitor.noInternet) {
            NoNetworkView()
        }
        .sheet(isPresented: $openWebView) {
            ZStack(alignment: .top) {
                
                WebView()
                    .ignoresSafeArea()
                
                HStack {
                    
                    Spacer()
                    
                    Button {
                        withAnimation {
                            openWebView.toggle()
                        }
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
        .sheet(isPresented: $openPrivacy) {
                ScrollView(showsIndicators: false) {
                    ZStack(alignment: .top) {
                    PrivacyView()
                        .ignoresSafeArea()
                    
                    HStack {
                        
                        Spacer()
                        
                        Button {
                            withAnimation {
                                openPrivacy.toggle()
                            }
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
    }
    
    // MARK: - ViewBuilders
    
    private func makeMainView() -> some View {
        VStack {
            
            HeaderView(menuSelection: $menuSelection, showModal: $viewModel.showModal)
            
            ZStack(alignment: .topTrailing) {
                ScrollView(showsIndicators: false) {
                    VStack {
                        if menuSelection == .home {
                            HomeView(menuSelection: $menuSelection, openSheet: $openWebView)
                        } else if menuSelection == .information {
                            InformationView()
                        } else if menuSelection == .team {
                            TeamView(teamMembers: viewModel.data)
                        }
                    }
                }
                
                self.makeSettingModal()
            }
            
            CustomTabView(menuSelection: $menuSelection)
        }
        .padding(10)
        .background(.white)
    }
    
    @ViewBuilder
    private func makeSettingModal() -> some View {
        VStack(spacing: 0) {
            if viewModel.showLanguButton {
                VStack {
                    Button {
                        withAnimation {
                            appViewModel.changeLangu()
                            self.resetApp.toggle()
                        }
                    } label: {
                        Text(ViewStrings.languTitle.localized)
                            .foregroundColor(Color.App.green)
                            .padding(10)
                    }
                    
                    Divider()
                        .frame(width: UIScreen.main.bounds.width * 0.2)
                }
                .transition(.move(edge: .top).combined(with: .opacity))
            }
            
            
            if viewModel.showPrivacyButton {
                VStack {
                    Button {
                        withAnimation {
                            viewModel.addDelay()
                            self.openPrivacy.toggle()
                        }
                    } label: {
                        Text("Privacy")
                            .foregroundColor(Color.App.green)
                            .padding(10)
                    }
                    
                    Divider()
                        .frame(width: UIScreen.main.bounds.width * 0.2)
                }
                .transition(.move(edge: .top).combined(with: .opacity))
            }
        }
        .background(
            Rectangle()
                .fill(Color.white)
                .opacity(0.8)
        )
        
        
    }
    
    @ViewBuilder
    private func makeButton() -> some View {
        VStack {
            
        }
        .transition(.move(edge: .top).combined(with: .opacity))
        
    }
    
    // MARK: - Methods
    
    private func setup() {
        Task { await viewModel.setup() }
    }
    
}

// MARK: - Localization

extension LobbyView {
    enum ViewStrings: String, LocalizableProtocol {
        
        //  MARK: - HeaderView
        
        case languTitle                         = "app_languTitle"
        
        var tableName: String {
            "Localizable"
        }
    }
}

#Preview {
    LobbyView(resetApp: .constant(true))
}
