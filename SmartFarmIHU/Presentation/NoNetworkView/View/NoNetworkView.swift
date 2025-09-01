//
//  NoNetworkView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 10/7/25.
//

import SwiftUI

struct NoNetworkView: View {
    
    @State var buttonTapped: Bool = false
    
    var body: some View {
        ZStack {
            
            Color.App.white
                .ignoresSafeArea()
            
            self.makeMainView()
        }
    }
    
    @ViewBuilder
    private func makeMainView() -> some View {
        VStack {
            Image(.noNetwork)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.top)
            
            VStack(alignment: .leading) {
                
                Text(ViewStrings.title.localized)
                    .font(.system(size: 35,weight: .bold))
                    .foregroundColor(Color.App.green)
                
                Text(ViewStrings.subtitle.localized)
                    .font(.system(size: 15,weight: .bold))
                    .foregroundColor(Color.App.green)
                    .opacity(0.6)
                    .padding(.leading, 8)
                
            }
            .padding(.bottom)
            
            Text(ViewStrings.internetTitle.localized)
                .font(.system(size: 20,weight: .bold))
                .foregroundColor(Color.App.green)
                .padding(.top)
            
            Text(ViewStrings.internetsubTitle.localized)
                .font(.system(size: 20,weight: .bold))
                .foregroundColor(Color.App.green)
            
            Spacer()
            
            ZStack {
                
                Button {
                    print("Checking the connection again...")
                    withAnimation {
                        self.buttonTapped = true
                    }
                } label: {
                    Text(ViewStrings.buttonText.localized)
                        .padding(.vertical,20)
                        .foregroundColor(Color.App.white)
                        .font(.system(size: 25,weight: .bold))
                        .frame(width: UIScreen.main.bounds.width * 0.7)
                        .background(self.buttonTapped ? Color.App.gray : Color.App.green)
                        .cornerRadius(10)
                    
                }
                .disabled(buttonTapped)
                
                if buttonTapped {
                    ProgressView()
                        .scaleEffect(2)
                        .tint(Color.App.green)
                }
            }
            
            
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

// MARK: - Localization

extension NoNetworkView {
    enum ViewStrings: String, LocalizableProtocol {
        
        //  MARK: - NoNetworkView
        
        case title                              = "app_title"
        case subtitle                           = "app_subTitle"
        
        case internetTitle                      = "noNetwork_subTitle1"
        case internetsubTitle                      = "noNetwork_subTitle2"
        
        case buttonText                      = "noNetwork_buttonText"
        
        var tableName: String {
            "Localizable"
        }
    }
}

#Preview {
    NoNetworkView()
}
