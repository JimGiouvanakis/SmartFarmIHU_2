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
    
    @Binding var selection: MenuSelection
    @Binding var dropDownmenu:Bool
    @Binding var menuIcon:Bool
    
    var body: some View {
        VStack {
            if viewModel.showItem1 {
                HStack {
                    Button(action: {
                        withAnimation {
                            dropDownmenu.toggle()
                            menuIcon.toggle()
                            selection = .home
                        }
                    }, label: {
                        Text(AppTextConstants.home)
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
                        withAnimation {
                            dropDownmenu.toggle()
                            menuIcon.toggle()
                            selection = .purpose
                        }
                    }, label: {
                        Text(AppTextConstants.purpose)
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
                        withAnimation {
                            dropDownmenu.toggle()
                            menuIcon.toggle()
                            selection = .team
                        }
                    }, label: {
                        Text(AppTextConstants.team)
                            .foregroundColor(viewModel.teamButtonTapped ? buttonTappedColor : buttonColor)
                    })
                    Spacer()
                }
                .padding(.leading)
                
                Divider()
            }
        }
        .foregroundColor(.black)
        .background(.white)
        .onAppear {
            viewModel.addDelay()
        }
    }
}
