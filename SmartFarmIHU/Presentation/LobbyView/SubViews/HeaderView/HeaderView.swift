//
//  HeaderView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/1/25.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - Properties
    
    @State private var selectedLanguage: AppLanguage = .el
    
    @Binding var resetApp: Bool
    
    @Binding var menuSelection: MenuSelection
    
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
            
            Spacer()
            
            Button {
                AppViewModel.shared.changeLangu()
                self.resetApp = false
            } label: {
                Text("Language")
            }
        }
        .padding(.horizontal)
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
        
        var tableName: String {
            "Localizable"
        }
    }
}

#Preview {
    LobbyView(resetApp: .constant(true))
}
