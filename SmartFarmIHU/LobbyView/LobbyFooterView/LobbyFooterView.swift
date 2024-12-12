//
//  LobbyFooterView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 12/12/24.
//

import Foundation
import SwiftUI

struct LobbyFooterView: View {
    var backgroundColor: Color = Color.App.lobbyFooterBlue1
 
    var body: some View {
        
        VStack(spacing: 0) {
            Rectangle()
                .fill(backgroundColor)
                .edgesIgnoringSafeArea(.all)
            ZStack {
                Text(AppTextConstants.FooterViewText)
                    .frame(width:400,height: 50)
                    .foregroundColor(.white)
                    .background(Color.App.lobbyFooterBlue2)
                    .padding([.bottom,.leading,.trailing])
            }
            .background(Color.App.lobbyFooterBlue2)
            
        }
    }
        
    }
//    .background(Color.App.lobbyFooterBlue2)
    


#Preview {
    LobbyFooterView()
}
