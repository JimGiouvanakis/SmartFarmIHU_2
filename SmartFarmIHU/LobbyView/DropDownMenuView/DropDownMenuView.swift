//
//  DropDownMenuView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 11/12/24.
//

import SwiftUI

struct DropDownMenuView: View {
    @StateObject var viewModel = DropDownMenuViewModel()
    
    @State var buttonTappedColor: Color = Color.App.buttonTappedGreen
    @State var buttonColor: Color = Color.App.menuButtonGray
    
    var body: some View {
        VStack {
            if viewModel.showItem1 {
                HStack {
                Button(action: {
                    viewModel.buttonTapped(index: 1)
                }, label: {
                    Text("Home")
                        .foregroundColor(viewModel.homeButtonTapped ? buttonTappedColor : buttonColor)
                })
                Spacer()
            }
                .padding(.leading)
            
            Divider()
        }
        
            if viewModel.showItem2 {
                HStack {
                    Button(action: {
                        viewModel.buttonTapped(index: 2)
                    }, label: {
                        Text("Details")
                            .foregroundColor(viewModel.purposeButtonTapped ? buttonTappedColor : buttonColor)
                    })
                    Spacer()
                }
                .padding(.leading)
                
                Divider()
            }
            
            if viewModel.showItem3 {
                HStack {
                    Button(action: {
                        viewModel.buttonTapped(index: 3)
                    }, label: {
                        Text("Search")
                            .foregroundColor(viewModel.teamButtonTapped ? buttonTappedColor : buttonColor)
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
