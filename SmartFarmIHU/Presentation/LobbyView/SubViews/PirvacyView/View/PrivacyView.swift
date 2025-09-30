//
//  PrivacyView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 25/9/25.
//

import SwiftUI

struct PrivacyView: View {
    var body: some View {
        ZStack {
            self.makeMainView()
        }
    }
    
    @ViewBuilder
    private func makeMainView() -> some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(ViewStrings.title1.localized)
                .foregroundColor(Color.black)
                .font(.system(size: 20, weight: .bold))
            
            Text(ViewStrings.text1.localized)
            
            Text(ViewStrings.title2.localized)
                .foregroundColor(Color.black)
                .font(.system(size: 20, weight: .bold))
            
            Text(ViewStrings.text2.localized)
            
            Text(ViewStrings.title3.localized)
                .foregroundColor(Color.black)
                .font(.system(size: 20, weight: .bold))
            
            Text(ViewStrings.text3.localized)
            
            Text(ViewStrings.title4.localized)
                .foregroundColor(Color.black)
                .font(.system(size: 20, weight: .bold))
            
            Text(ViewStrings.text4.localized)
            
            Text(ViewStrings.title5.localized)
                .foregroundColor(Color.black)
                .font(.system(size: 20, weight: .bold))
            
            Text(ViewStrings.text5.localized)
            
        }
        .padding(.horizontal,10)
        .padding(.top)
    }
}

// MARK: - Localization

extension PrivacyView {
    enum ViewStrings: String, LocalizableProtocol {
        
        //  MARK: - HeaderView
        
        case title1                         = "privacyView_title1"
        case text1                          = "privacyView_text1"
        
        case title2                         = "privacyView_title2"
        case text2                          = "privacyView_text2"
        
        case title3                         = "privacyView_title3"
        case text3                          = "privacyView_text3"
        
        case title4                         = "privacyView_title4"
        case text4                          = "privacyView_text4"
        
        case title5                         = "privacyView_title5"
        case text5                          = "privacyView_text5"
        
        var tableName: String {
            "Localizable"
        }
    }
}

#Preview {
    PrivacyView()
}
