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
            
            Text(DiseasesViewTexts.Text1)
            
            Spacer()
            
            Text(DiseasesViewTexts.Text2)
            
            Spacer()
            Spacer()
            
            ForEach(DiseasesViewTexts().machineLearningModels.indices, id: \.self) { index in
                HStack {
                    Text("\(index + 1).")
                        .bold()
                    Text(DiseasesViewTexts().machineLearningModels[index])
                    
                    Spacer()
                }
                .padding(.leading)
            }
            
            Spacer()
            
            Text(DiseasesViewTexts.Text3)
            
            Spacer()
            
            ForEach(DiseasesViewTexts().plantDiseases.indices, id: \.self) { index in
                HStack {
                    Text("\(index + 1).")
                        .bold()
                    Text(DiseasesViewTexts().plantDiseases[index])
                    
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
