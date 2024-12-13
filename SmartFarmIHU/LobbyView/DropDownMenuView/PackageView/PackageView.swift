//
//  PackageView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/12/24.
//

import SwiftUI

struct PackageView: View {
    
    var body: some View {
        ScrollView {
            VStack() {
                ZStack {
                    HStack {
                        Text(AppTextConstants.package)
                            .font(.title)
                            .foregroundColor(Color.black)
                            .padding(10)
                        
                        Spacer()
                        
                    }
                }
                .background(Color.App.headerGray)
                
                ForEach(AppTextConstants.packageList, id: \.self) { package in
                    VStack {
                        
                        HStack {
                            Text(package.header)
                            
                            Spacer()
                        }
                        
                        Spacer()
                        
                        HStack {
                            VStack {
                                Text(AppTextConstants.bulletPoint)
                                Spacer()
                            }
                            Text(package.item1)
                            
                            Spacer()
                        }
                        
                        if let item2 = package.item2  {
                            HStack {
                                VStack {
                                    Text(AppTextConstants.bulletPoint)
                                    Spacer()
                                }
                                
                                Text(item2)
                                
                                Spacer()
                            }
                        } else {
                            Spacer()
                            
                            Text(AppTextConstants.packageViewText)
                            
                            Spacer()
                        }
                        
                        if let item3 = package.item3  {
                            HStack {
                                VStack {
                                    Text(AppTextConstants.bulletPoint)
                                    Spacer()
                                }
                                Text(item3)
                                
                                Spacer()
                            }
                        }
                        
                        if let item4 = package.item4  {
                            HStack {
                                VStack {
                                    Text(AppTextConstants.bulletPoint)
                                    Spacer()
                                }
                                Text(item4)
                                
                                Spacer()
                            }
                        }
                    }
                    .padding(.leading)
                }
                .padding(10)
            }
        }
    }
}

#Preview {
    PackageView()
}
