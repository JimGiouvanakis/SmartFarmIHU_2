//
//  SplashView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/1/25.
//

import SwiftUI

struct SplashView: View {
    
    // MARK: - Properties
    
    @State private var isActive = false
    @State private var size = 0.6
    @State private var opacity = 0.5
    
    // MARK: - View
    
    var body: some View {
        ZStack {
            
            Color.App.white
            
            self.makeMainView()
        }
        .ignoresSafeArea()
    }
    
    // MARK: - ViewBuilders
    
    @ViewBuilder
    private func makeMainView() -> some View {
        if isActive {
            LobbyView(resetApp: $isActive)
        } else {
            VStack {
                VStack(alignment: .leading) {
                    Text(ViewStrings.title.localized)
                        .font(.system(size: 50,weight: .bold))
                        .foregroundColor(Color.App.green)
                    
                    Text(ViewStrings.subtitle.localized)
                        .font(.system(size: 25,weight: .bold))
                        .foregroundColor(Color.App.green)
                        .opacity(0.6)
                        .padding(.leading, 8)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity  = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
                    self.isActive = true
                    self.size = 0.6
                    self.opacity = 0.5
                }
            }
            .background(Color.App.white)
        }
    }
    
    // MARK: - Methods
    
    // ..
}

// MARK: - Localization

extension SplashView {
    enum ViewStrings: String, LocalizableProtocol {
        
        //  MARK: - SplashView
        
        case title                              = "app_title"
        case subtitle                           = "app_subTitle"
        
        var tableName: String {
            "Localizable"
        }
    }
}

#Preview {
    SplashView()
}
