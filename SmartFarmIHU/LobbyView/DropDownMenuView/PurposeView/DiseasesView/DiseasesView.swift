//
//  DiseasesView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 12/12/24.
//

import SwiftUI

struct DiseasesView: View {
    
    var body: some View {
        VStack{
            Text(AppTextConstants.Text1)
            
            Spacer()
            
            Text(AppTextConstants.Text2)
            
            Spacer()
            Spacer()
            
            ForEach(AppTextConstants.machineLearningModels.indices, id: \.self) { index in
                HStack {
                    Text("\(index + 1).")
                        .bold()
                    Text(AppTextConstants.machineLearningModels[index])
                    
                    Spacer()
                }
                .padding(.leading)
            }
            
            Spacer()
            
            Text(AppTextConstants.Text3)
            
            Spacer()
            
            ForEach(AppTextConstants.plantDiseases.indices, id: \.self) { index in
                HStack {
                    Text("\(index + 1).")
                        .bold()
                    Text(AppTextConstants.plantDiseases[index])
                    
                    Spacer()
                }
                .padding(.leading)
            }
            
            Spacer()
            
            HStack {
                Image("Plant1")
                
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Image("Plant2")
                
                Spacer()
            }
        }
        .padding()
        .foregroundColor(Color.App.gray)
    }
}

#Preview {
    DiseasesView()
}
