//
//  DropDownMenuView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 11/12/24.
//

import SwiftUI

struct DropDownMenuView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("Home")
                })
                Spacer()
            }
            .padding(.leading)
            
            Divider()
            
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("Details")
                })
                Spacer()
            }
            .padding(.leading)
            
            Divider()
            
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
        .foregroundColor(.black)
        .background(BackgroundClearView())
    }
}

#Preview {
    DropDownMenuView()
}
