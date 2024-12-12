//
//  DropDownMenuView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 11/12/24.
//

import SwiftUI

struct DropDownMenuView: View {
    @StateObject var viewModel = DropDownMenyViewModel()
    
    var body: some View {
        VStack {
            if viewModel.showItem1 {
                HStack {
                Button(action: {
                    
                }, label: {
                    Text("Home")
                })
                Spacer()
            }
                .padding(.leading)
            
            Divider()
        }
        
            if viewModel.showItem2 {
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("Details")
                    })
                    Spacer()
                }
                .padding(.leading)
                
                Divider()
            }
            
            if viewModel.showItem3 {
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("Search")
                    })
                    Spacer()
                }
                .padding(.leading)
                
                Divider()
            }
    }
        .foregroundColor(.black)
        .background(BackgroundClearView())
        .onAppear {
            viewModel.addDelay()
        }
}
}

#Preview {
    DropDownMenuView()
}
