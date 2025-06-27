//
//  SplashScreenView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/1/25.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.6
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            LobbyView(resetApp: $isActive)
        } else {
            VStack {
                VStack(alignment: .leading) {
                    Text(AppTextConstants.AppTitle)
                        .font(.system(size: 50,weight: .bold))
                        .foregroundColor(Color.App.green)
                    
                    Text(AppTextConstants.AppSubTittle)
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
        }
    }
}

#Preview {
    SplashScreenView()
}
