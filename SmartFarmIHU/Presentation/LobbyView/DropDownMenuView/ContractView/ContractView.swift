//
//  ContractView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 20/12/24.
//

import Foundation
import SwiftUI

struct ContractView: View {
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    HStack {
                        Text(AppTextConstants.contract)
                            .font(.title)
                            .foregroundColor(Color.black)
                            .padding(10)
                        
                        Spacer()
                        
                    }
                }
                .background(Color.App.headerGray)
            }
            
            VStack {
                Text(AppTextConstants.contractViewTitle)
                    .font(.title2)
                    .foregroundColor(Color.App.green)
                    .padding(10)
                    .bold()
                
                Divider()
                    .padding(.horizontal,20)
//                Text("...............")
                
                ForEach(AppTextConstants.contracts, id: \.self) { contract in
                 
                    Text(contract.name)
                        .font(.title3)
                        .foregroundColor(Color.App.green)
                        .padding(10)
                    
                    Text(contract.projectRole)
                        .font(.title3)
                        .foregroundColor(Color.App.green)
                        .padding(10)
                    
                    HStack {
                        Text("Tel:")
                            .font(.title3)
                            .foregroundColor(Color.App.green)
                        
                        Text(contract.phoneNumber)
                    }
                    
                    HStack {
                        Text("email:")
                            .font(.title3)
                            .foregroundColor(Color.App.green)
                        
                        Text(contract.email)
                    }
                    .padding(10)
                    
                    if contract.website != "" {
                        HStack {
                            Text("web:")
                                .font(.title3)
                                .foregroundColor(Color.App.green)
                            
                            Text(contract.website)
                        }
                        .padding(10)
                    }
                }
                
            }
        }
    }
}


#Preview {
    ContractView()
}
