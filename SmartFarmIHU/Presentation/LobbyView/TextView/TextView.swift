//
//  TextView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 11/12/24.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack {
            VStack(spacing: 20){
                Text(AppTextConstants.TextViewText1)
                //            Spacer()
                Text(AppTextConstants.TextViewText2)
                //            Spacer()
                Text(AppTextConstants.TextViewText3)
            }
            
            Spacer(minLength: 30)
            
            VStack {
                HStack {
                    Text(AppTextConstants.TextViewListHeader)
                        .foregroundColor(Color.App.green)
                    Spacer()
                }
                
                HStack {
                    Text(AppTextConstants.TextViewListItem1)
                    Spacer()
                }
                
                HStack {
                    Text(AppTextConstants.TextViewListItem2)
                    Spacer()
                }
                
                HStack {
                    Text(AppTextConstants.TextViewListItem3)
                    Spacer()
                }
                
                HStack {
                    Text(AppTextConstants.TextViewListItem4)
                    Spacer()
                }
                
                HStack {
                    Text(AppTextConstants.TextViewListItem5)
                    Spacer()
                }
            }
            
            Spacer(minLength: 30)
            
            VStack(spacing:20) {
                Text(AppTextConstants.TextViewFooterText1)
                
                Text(AppTextConstants.TextViewFooterText2)
            }
        }
    }
}


#Preview {
    TextView()
}
