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
                    Image("MainHomePagePhoto")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width - 50, height: 450)
                        .cornerRadius(20)
                        .padding(.vertical)
                    
                    Text(AppTextConstants.LobbyHeader)
                        .font(.headline)
                        .foregroundColor(Color.App.buttonTappedGreen)
                    
                    Button(action: {
                        
                    }, label: {
                        Text(AppTextConstants.LobbyButton)
                        
                    })
                    .frame(width: UIScreen.main.bounds.width - 50, height: 100)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.App.green)
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
    LobbyView()
}
