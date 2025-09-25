//
//  CustomTabView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 10/1/25.
//

import SwiftUI

struct CustomTabView: View {
    
    // MARK: - Properties

    @Binding var menuSelection: MenuSelection
    
    // MARK: - View
    
    var body: some View {
        HStack(spacing: 20) {
                        
            makeSelection(selection: .home)
            
            makeSelection(selection: .information)
            
            makeSelection(selection: .team)
            
        }
        .padding(.horizontal, 20)
        .frame(width: UIScreen.main.bounds.width, height: 50)
        .background(Color.white)
    }
    
    // MARK: - ViewBuilders
    
    @ViewBuilder
    private func makeSelection(selection: MenuSelection) -> some View {
        ZStack {
            Color.white
            
            Button(action: {
                menuSelection = selection
            }) {
                VStack {
                    Image(systemName: selection.icon)
                        .resizable()
                        .frame(width: selection == .team ? 60 : 30 , height: 30)
                }
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(menuSelection == selection ?  Color.App.buttonTappedGreen : Color.clear)
                        .frame(width: 80, height: 50)
                )
                
                .foregroundColor(Color.black)
                .padding(.horizontal,10)
            }
        }
    }
    
}

#Preview {
    LobbyView(resetApp: .constant(true))
}
