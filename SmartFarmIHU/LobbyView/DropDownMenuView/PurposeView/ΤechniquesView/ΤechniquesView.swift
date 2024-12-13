//
//  ΤechniquesView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/12/24.
//

import SwiftUI

struct TechniquesView: View {
    
    var body: some View {
        VStack {
            
            VStack {
                ForEach(AppTextConstants.techiquesList.indices, id: \.self) { index in
                    HStack {
                        VStack {
                            Text(AppTextConstants.bulletPoint)
                            
                            Spacer()
                        }
                        Text(AppTextConstants.techiquesList[index])
                        
                        Spacer()
                    }
                }
            }
            .padding(.leading)
            .foregroundColor(Color.App.gray)
        }
    }
}

#Preview {
    TechniquesView()
}
