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
            if viewModel.showHomeButton {
                HStack {
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation {
                            dropDownmenu.toggle()
                            menuIcon.toggle()
                            selection = .home
                        }
                    }, label: {
                        Text(AppTextConstants.english)
                            .foregroundColor(viewModel.homeButtonTapped ? buttonTappedColor : buttonColor)
                    })
                    
                    
                }
                .padding(.leading)
                
                Divider()
            }
            
            if viewModel.showPurposeButton {
                HStack {
                    
                    Spacer()
                    
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
                    
                }
                .padding(.leading)
                
                Divider()
            }
            
//            if viewModel.showTeamButton {
//                HStack {
//                    Button(action: {
//                        withAnimation {
//                            dropDownmenu.toggle()
//                            menuIcon.toggle()
//                            selection = .team
//                        }
//                    }, label: {
//                        Text(AppTextConstants.team)
//                            .foregroundColor(viewModel.teamButtonTapped ? buttonTappedColor : buttonColor)
//                    })
//                    Spacer()
//                }
//                .padding(.leading)
//                
//                Divider()
//            }
//            
//            if viewModel.showItem4 {
//                HStack {
//                    Button(action: {
//                        withAnimation {
//                            dropDownmenu.toggle()
//                            menuIcon.toggle()
//                            selection = .package
//                        }
//                    }, label: {
//                        Text(AppTextConstants.package)
//                            .foregroundColor(viewModel.packageButtonTapped ? buttonTappedColor : buttonColor)
//                    })
//                    Spacer()
//                }
//                .padding(.leading)
//                
//                Divider()
//            }
//            
//            if viewModel.showResultButton {
//                HStack {
//                    Button(action: {
//                        withAnimation {
//                            dropDownmenu.toggle()
//                            menuIcon.toggle()
//                            selection = .result
//                        }
//                    }, label: {
//                        Text(AppTextConstants.result)
//                            .foregroundColor(viewModel.resultButtonTapped ? buttonTappedColor : buttonColor)
//                    })
//                    Spacer()
//                }
//                .padding(.leading)
//                
//                Divider()
//            }
//            
//            if viewModel.showContractButton {
//                HStack {
//                    Button(action: {
//                        withAnimation {
//                            dropDownmenu.toggle()
//                            menuIcon.toggle()
//                            selection = .contract
//                        }
//                    }, label: {
//                        Text(AppTextConstants.contract)
//                            .foregroundColor(viewModel.contractButtonTapped ? buttonTappedColor : buttonColor)
//                    })
//                    Spacer()
//                }
//                .padding(.leading)
//                
//                Divider()
//            }
//            
//            if viewModel.showEnglishButton {
//                HStack {
//                    Button(action: {
//                        withAnimation {
//                            dropDownmenu.toggle()
//                            menuIcon.toggle()
//                            
//                            /// Selection change to Home for the Text to refreshed
//                            if selection == .english {
//                                selection = .home
//                            } else {
//                                selection = .english
//                            }
//                            
//                            viewModel.changeLanguage()
//                        }
//                    }, label: {
//                        Text(AppTextConstants.english)
//                            .foregroundColor(viewModel.contractButtonTapped ? buttonTappedColor : buttonColor)
//                    })
//                    Spacer()
//                }
//                .padding(.leading)
//                
//                Divider()
//            }

        }
        .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.green, lineWidth: 2)
            )
        .foregroundColor(.black)
        .background(.white)
        .onAppear {
            viewModel.addDelay()
        }
    }
}

#Preview {
    LobbyView()
}
