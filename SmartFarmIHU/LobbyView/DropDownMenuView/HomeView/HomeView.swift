//
//  HomeView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 12/12/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
            VStack {
                Group {
                    Image("MainPhoto")
                        .resizable()
                        .frame(width: 350, height: 300)
                        .padding(.bottom)
                    
                    Text(AppTextConstants.LobbyHeader)
                        .font(.headline)
                        .foregroundColor(Color.App.green)
                    
                    Button(action: {
                        
                    }, label: {
                        Text(AppTextConstants.LobbyButton)
                        
                    })
                    .buttonStyle(.borderedProminent)
                    .tint(Color.App.buttonBlue)
                    .foregroundColor(.white)
                    .buttonBorderShape(.roundedRectangle)
                    
                    Text(AppTextConstants.LobbyButtonSubTittle)
                        .font(.headline)
                        .foregroundColor(Color.App.green)
                        .padding(.bottom)
                    
                    TextView()
                }
                .padding([.leading,.trailing])
            }
    }
}

#Preview {
    HomeView()
}
