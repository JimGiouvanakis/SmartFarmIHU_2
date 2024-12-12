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
                            Image(systemName: "plus")
                            Text(PurposeViewTexts.buttonDiseases)
                        })
                        .foregroundColor(Color.App.green)
                        
                        Spacer()
                    }
                    .padding(10)
                    
                    Divider()
                        .overlay(Color.App.menuButtonGray)
                    
                    HStack {
                        Button(action: {
                            viewModel.buttonTapped(button: .buttonSmartFarming)
                        }, label: {
                            Image(systemName: "plus")
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
                            Image(systemName: "plus")
                            Text(PurposeViewTexts.buttonΤechniques)
                        })
                        .foregroundColor(Color.App.green)
                        
                        Spacer()
                    }
                    .padding(10)
                    
                    HStack {
                        Button(action: {
                            viewModel.buttonTapped(button: .buttonChart)
                        }, label: {
                            Image(systemName: "plus")
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
                            Image(systemName: "plus")
                            Text(PurposeViewTexts.buttonGrowth)
                            
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
                            Image(systemName: "plus")
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
                            Image(systemName: "plus")
                            Text(PurposeViewTexts.buttonMethodology)
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
                            Image(systemName: "plus")
                            Text(PurposeViewTexts.buttonDeveloping)
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
            .padding()
        }
    }
}

#Preview {
    PurposeView()
}
