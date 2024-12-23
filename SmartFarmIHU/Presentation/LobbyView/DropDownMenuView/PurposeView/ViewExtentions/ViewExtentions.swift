//
//  ViewExtentions.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 23/12/24.
//


import SwiftUI

extension PurposeView {
    
    @ViewBuilder
    func buttonDiseases() -> some View {
        HStack {
            Button(action: {
                if viewModel.buttonTapped == .buttonDiseases {
                    viewModel.buttonTapped(button: .noView)
                } else {
                    viewModel.buttonTapped(button: .buttonDiseases)
                }
            }, label: {
                Image(systemName: viewModel.buttonTapped == .buttonDiseases  ? "minus" : "plus")
                Text(AppTextConstants.buttonDiseases)
            })
            .foregroundColor(Color.App.green)
            
            Spacer()
        }
        .padding(10)
        
        Divider()
            .overlay(Color.App.menuButtonGray)
        
        if viewModel.buttonTapped == .buttonDiseases {
            DiseasesView()
            
            Divider()
                .overlay(Color.App.menuButtonGray)
        }
    }
    
    @ViewBuilder
    func buttonSmartFarming() -> some View {
        HStack {
            Button(action: {
                if viewModel.buttonTapped == .buttonSmartFarming {
                    viewModel.buttonTapped(button: .noView)
                } else {
                    viewModel.buttonTapped(button: .buttonSmartFarming)
                }
            }, label: {
                Image(systemName: viewModel.buttonTapped == .buttonSmartFarming  ? "minus" : "plus")
                Text(AppTextConstants.buttonSmartFarming)
            })
            .foregroundColor(Color.App.green)
            
            Spacer()
        }
        .padding(10)
        
        Divider()
            .overlay(Color.App.menuButtonGray)
        
        if viewModel.buttonTapped == .buttonSmartFarming {
            SmartFarmingView()
            
            Divider()
                .overlay(Color.App.menuButtonGray)
        }
    }
    
    @ViewBuilder
    func buttonΤechniques() -> some View {
        HStack {
            Button(action: {
                if viewModel.buttonTapped == .buttonΤechniques {
                    viewModel.buttonTapped(button: .noView)
                } else {
                    viewModel.buttonTapped(button: .buttonΤechniques)
                }
            }, label: {
                Image(systemName: viewModel.buttonTapped == .buttonΤechniques  ? "minus" : "plus")
                Text(AppTextConstants.buttonΤechniques)
                    .multilineTextAlignment(.leading)
            })
            .foregroundColor(Color.App.green)
            
            Spacer()
        }
        .padding(10)
        
        Divider()
            .overlay(Color.App.menuButtonGray)
        
        if viewModel.buttonTapped == .buttonΤechniques {
            TechniquesView()
            
            Divider()
                .overlay(Color.App.menuButtonGray)
        }
    }
    
    @ViewBuilder
    func buttonChart() -> some View {
        HStack {
            Button(action: {
                if viewModel.buttonTapped == .buttonChart {
                    viewModel.buttonTapped(button: .noView)
                } else {
                    viewModel.buttonTapped(button: .buttonChart)
                }
            }, label: {
                Image(systemName: viewModel.buttonTapped == .buttonChart  ? "minus" : "plus")
                Text(AppTextConstants.buttonChart)
            })
            .foregroundColor(Color.App.green)
            
            Spacer()
        }
        .padding(10)
        
        Divider()
            .overlay(Color.App.menuButtonGray)
        
        if viewModel.buttonTapped == .buttonChart {
            ChartView()
            
            Divider()
                .overlay(Color.App.menuButtonGray)
        }
    }
    
    @ViewBuilder
    func buttonGrowth() -> some View {
        HStack {
            Button(action: {
                if viewModel.buttonTapped == .buttonGrowth {
                    viewModel.buttonTapped(button: .noView)
                } else {
                    viewModel.buttonTapped(button: .buttonGrowth)
                }
            }, label: {
                Image(systemName: viewModel.buttonTapped == .buttonGrowth  ? "minus" : "plus")
                Text(AppTextConstants.buttonGrowth)
                    .multilineTextAlignment(.leading)
                
            })
            .foregroundColor(Color.App.green)
            
            Spacer()
        }
        .padding(10)
        
        Divider()
            .overlay(Color.App.menuButtonGray)
        
        if viewModel.buttonTapped == .buttonGrowth {
            GrowthView()
            
            Divider()
                .overlay(Color.App.menuButtonGray)
        }
    }
    
    @ViewBuilder
    func buttonFind() -> some View {
        HStack {
            Button(action: {
                if viewModel.buttonTapped == .buttonFind {
                    viewModel.buttonTapped(button: .noView)
                } else {
                    viewModel.buttonTapped(button: .buttonFind)
                }
            }, label: {
                Image(systemName: viewModel.buttonTapped == .buttonFind ? "minus" : "plus")
                Text(AppTextConstants.buttonFind)
            })
            .foregroundColor(Color.App.green)
            
            Spacer()
        }
        .padding(10)
        
        Divider()
            .overlay(Color.App.menuButtonGray)
        
        if viewModel.buttonTapped == .buttonFind {
            FindView()
            
            Divider()
                .overlay(Color.App.menuButtonGray)
        }
    }
    
    @ViewBuilder
    func buttonMethodology() -> some View {
        HStack {
            Button(action: {
                if viewModel.buttonTapped == .buttonMethodology {
                    viewModel.buttonTapped(button: .noView)
                } else {
                    viewModel.buttonTapped(button: .buttonMethodology)
                }
            }, label: {
                Image(systemName: viewModel.buttonTapped == .buttonMethodology  ? "minus" : "plus")
                Text(AppTextConstants.buttonMethodology)
                    .multilineTextAlignment(.leading)
            })
            .foregroundColor(Color.App.green)
            
            Spacer()
        }
        .padding(10)
        
        Divider()
            .overlay(Color.App.menuButtonGray)
        
        if viewModel.buttonTapped == .buttonMethodology {
            MethologyView()
            
            Divider()
                .overlay(Color.App.menuButtonGray)
        }
    }
    
    @ViewBuilder
    func buttonDeveloping() -> some View {
        HStack {
            Button(action: {
                if viewModel.buttonTapped == .buttonDeveloping {
                    viewModel.buttonTapped(button: .noView)
                } else {
                    viewModel.buttonTapped(button: .buttonDeveloping)
                }
            }, label: {
                Image(systemName: viewModel.buttonTapped == .buttonDeveloping  ? "minus" : "plus")
                Text(AppTextConstants.buttonDeveloping)
                    .multilineTextAlignment(.leading)
            })
            .foregroundColor(Color.App.green)
            
            Spacer()
        }
        .padding(10)
        
        Divider()
            .overlay(Color.App.menuButtonGray)
        
        if viewModel.buttonTapped == .buttonDeveloping {
            DevelopingView()
            
            Divider()
                .overlay(Color.App.menuButtonGray)
        }
    }
    
}
