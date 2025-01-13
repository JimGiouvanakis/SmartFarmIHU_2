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
            LobbyView()
        } else {
            ZStack {
                VStack {
                    VStack {
                        Image("MainPhoto")
                            .resizable()
                            .frame(width: 150,height: 150)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color.clear)
                                
                            )
                        Text("SmartFarm")
                            .font(.system(size: 50))
                            .foregroundColor(Color.App.green)
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
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.isActive = true
                    }
                }
            }
            
        }
    }
}

#Preview {
    SplashScreenView()
}
