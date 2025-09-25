//
//  HeaderView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/1/25.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - Properties
    
    @Binding var menuSelection: MenuSelection
    
    @Binding var showModal: Bool
    // MARK: - View
    
    var body: some View {
        ZStack {
            self.makeMainview()
        }
    }
    
    // MARK: - ViewBuilders
    
    @ViewBuilder
    private func makeMainview() -> some View {
        HStack {
            
            self.makeLogoButton()
            
            Spacer()
            
            self.makeSettingButton()
            
        }
        .padding(.horizontal)
    }
    
    @ViewBuilder
    private func makeLogoButton() -> some View {
        Button {
            menuSelection = .home
        } label: {
            HStack {
                Image(.mainPhoto)
                    .resizable()
                    .frame(width: 50,height: 50)
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color.clear)
                    )
                
                VStack(alignment: .leading,spacing: 0) {
                    Text(ViewStrings.appTitle.localized)
                        .font(.system(size: 25,weight: .bold))
                        .foregroundColor(Color.App.green)
                    
                    Text(ViewStrings.subTitle.localized)
                        .font(.system(size: 15,weight: .bold))
                        .foregroundColor(Color.App.green)
                        .opacity(0.5)
                }
            }
        }

    }
    
    @ViewBuilder
    private func makeSettingButton() -> some View {
            Button {
                withAnimation(.easeInOut(duration: 0.2)) {
                    self.showModal.toggle()
                }
            } label: {
                Image(systemName: "gearshape")
                    .resizable()
                    .frame(width: 30,height: 30)
                    .foregroundColor(Color.App.green)
            }
    }
    
    // MARK: - Methods
    
    // ...
}

// MARK: - Localization

extension HeaderView {
    enum ViewStrings: String, LocalizableProtocol {
        
        //  MARK: - HeaderView
        
        case appTitle                           = "app_title"
        case subTitle                           = "app_subTitle"
        case languTitle                         = "app_languTitle"
        
        var tableName: String {
            "Localizable"
        }
    }
}

#Preview {
    LobbyView(resetApp: .constant(true))
}
