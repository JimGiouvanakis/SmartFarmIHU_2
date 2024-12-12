//
//  PurposeView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 12/12/24.
//

import Foundation
import SwiftUI


struct PurposeView: View {
    
    @StateObject var viewModel = PurposeViewModel()
    
    var body: some View {
        ScrollView {
            VStack() {
                ZStack {
                    HStack {
                        Text(PurposeViewTexts.header)
                        //                        .frame(width:400,height: 50)
                            .font(.title)
                            .foregroundColor(Color.black)
                            .padding(10)
                        
                        Spacer()
                        
                    }
                }
                .background(Color.App.headerGray)
                
                Group {
                    Text(PurposeViewTexts.headerTitle)
                        .font(.headline)
                        .foregroundColor(Color.App.green)
                    
                    Text(PurposeViewTexts.headerSubTittle)
                        .font(.headline)
                        .foregroundColor(Color.App.green)
                    
                    Image("DroneImage")
                        .resizable()
                        .frame(width: 350, height: 300)
                        .padding(.bottom)
                    
                    VStack {
                        HStack {
                            Button(action: {
                                viewModel.buttonTapped(button: .buttonDiseases)
                            }, label: {
                                Image(systemName: viewModel.buttonDiseasesTapped  ? "minus" : "plus")
                                Text(PurposeViewTexts.buttonDiseases)
                            })
                            .foregroundColor(Color.App.green)
                            
                            Spacer()
                        }
                        .padding(10)
                        
                        Divider()
                            .overlay(Color.App.menuButtonGray)
                        
                        if viewModel.buttonDiseasesTapped {
                            DiseasesView()
                            
                            Divider()
                                .overlay(Color.App.menuButtonGray)
                        }
        
                        HStack {
                            Button(action: {
                                viewModel.buttonTapped(button: .buttonSmartFarming)
                            }, label: {
                                Image(systemName: viewModel.buttonSmartFarmingTapped  ? "minus" : "plus")
                                Text(PurposeViewTexts.buttonSmartFarming)
                            })
                            .foregroundColor(Color.App.green)
                            
                            Spacer()
                        }
                        .padding(10)
                        
                        Divider()
                            .overlay(Color.App.menuButtonGray)
                        
                        HStack {
                            Button(action: {
                                viewModel.buttonTapped(button: .buttonΤechniques)
                            }, label: {
                                Image(systemName: viewModel.buttonΤechniquesTapped  ? "minus" : "plus")
                                Text(PurposeViewTexts.buttonΤechniques)
                                    .multilineTextAlignment(.leading)
                            })
                            .foregroundColor(Color.App.green)
                            
                            Spacer()
                        }
                        .padding(10)
                        
                        Divider()
                            .overlay(Color.App.menuButtonGray)
                        
                        HStack {
                            Button(action: {
                                viewModel.buttonTapped(button: .buttonChart)
                            }, label: {
                                Image(systemName: viewModel.buttonChartTapped  ? "minus" : "plus")
                                Text(PurposeViewTexts.buttonChart)
                            })
                            .foregroundColor(Color.App.green)
                            
                            Spacer()
                        }
                        .padding(10)
                        
                        Divider()
                            .overlay(Color.App.menuButtonGray)
                        
                        HStack {
                            Button(action: {
                                viewModel.buttonTapped(button: .buttonGrowth)
                            }, label: {
                                Image(systemName: viewModel.buttonGrowthTapped  ? "minus" : "plus")
                                Text(PurposeViewTexts.buttonGrowth)
                                    .multilineTextAlignment(.leading)
                                
                            })
                            .foregroundColor(Color.App.green)
                            
                            Spacer()
                        }
                        .padding(10)
                        
                        Divider()
                            .overlay(Color.App.menuButtonGray)
                        
                        HStack {
                            Button(action: {
                                viewModel.buttonTapped(button: .buttonFind)
                            }, label: {
                                Image(systemName: viewModel.buttonFindTapped  ? "minus" : "plus")
                                Text(PurposeViewTexts.buttonFind)
                            })
                            .foregroundColor(Color.App.green)
                            
                            Spacer()
                        }
                        .padding(10)
                        
                        Divider()
                            .overlay(Color.App.menuButtonGray)
                        
                        HStack {
                            Button(action: {
                                viewModel.buttonTapped(button: .buttonMethodology)
                            }, label: {
                                Image(systemName: viewModel.buttonMethodologyTapped  ? "minus" : "plus")
                                Text(PurposeViewTexts.buttonMethodology)
                                    .multilineTextAlignment(.leading)
                            })
                            .foregroundColor(Color.App.green)
                            
                            Spacer()
                        }
                        .padding(10)
                        
                        Divider()
                            .overlay(Color.App.menuButtonGray)
                        
                        HStack {
                            Button(action: {
                                viewModel.buttonTapped(button: .buttonDeveloping)
                            }, label: {
                                Image(systemName: viewModel.buttonDevelopingTapped  ? "minus" : "plus")
                                Text(PurposeViewTexts.buttonDeveloping)
                                    .multilineTextAlignment(.leading)
                            })
                            .foregroundColor(Color.App.green)
                            
                            Spacer()
                        }
                        .padding(10)
                        
                        Divider()
                            .overlay(Color.App.menuButtonGray)
                    }
                    .border(Color.App.menuButtonGray, width: 0.5)
                }
                .padding(10)
            }
        }
    }
}

#Preview {
    PurposeView()
}
