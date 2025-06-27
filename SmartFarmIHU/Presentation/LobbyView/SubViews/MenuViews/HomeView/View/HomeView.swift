//
//  HomeView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 12/12/24.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Properties
    
    @StateObject var viewModel = HomeViewModel()
    
    @Binding var menuSelection: MenuSelection
    
    @Binding var openSheet: Bool
    
    // MARK: - View
    
    var body: some View {
        ZStack {
            self.makeMainview()
        }
        .onAppear() {
            self.setup()
        }
    }
    
    // MARK: - ViewBuilders
    
    @ViewBuilder
    private func makeMainview() -> some View {
        VStack {
            Image(.mainHomePagePhoto)
                .resizable()
                .frame(width: UIScreen.main.bounds.width - 50, height: 450)
                .cornerRadius(20)
                .padding(.vertical)
            
            Text(ViewStrings.title.localized)
                .font(.system(size: 17))
                .foregroundColor(Color.App.green)
                .padding(.bottom, 10)
            
            Button(action: {
                openSheet.toggle()
            }, label: {
                Text(ViewStrings.buttonTitle.localized)
                    .font(.system(size: 19,weight: .bold))
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .frame(height: 60)
                    .foregroundColor(Color.white)
                
            })
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.App.green)
                
            )
            .shadow(color: Color.App.green.opacity(0.3),radius: 10, x: 0, y: 10)
            .padding(.bottom, 10)
            
            Text(ViewStrings.subTitle.localized)
                .font(.system(size: 16))
                .foregroundColor(Color.App.gray)
        }
        .padding([.leading,.trailing])
        .opacity(viewModel.isViewed ? 1 : 0)
    }
    
    // MARK: - Methods
    
    private func setup() {
        self.viewModel.addDelay()
    }
}

// MARK: - Localization

extension HomeView {
    enum ViewStrings: String, LocalizableProtocol {
        
        //  MARK: - HomeView
        
        case title                              = "homeView_title"
        case buttonTitle                        = "homeView_button_title"
        case subTitle                           = "homeView_subtitle"
        
        var tableName: String {
            "Localizable"
        }
    }
}

#Preview {
    LobbyView(resetApp: .constant(true))
}
