//
//  MemberCardView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 15/1/25.
//

import SwiftUI

struct MemberCardView: View {
    
    @State var member: TeamStuct
    
    var body: some View {
        HStack {
            if member.side {
                Image(member.image)
                    .resizable()
                    .frame(width: 120,height: 120)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color.clear)
                    )
            }
            
            VStack(spacing: 5) {
                HStack {
                    Text(member.name)
                        .bold()
                        .font(.system(size: 16))
                        .foregroundColor(Color.App.green)
                    
                    Spacer()
                }
                
                HStack {
                    Text(member.academicRole)
                        .font(.system(size: 12))
                    
                    Spacer()
                }
                
                HStack {
                    Text(member.projectRole)
                        .font(.system(size: 10))
                    Spacer()
                }
            }
            .padding(.leading)
            
            if member.side == false {
                Image(member.image)
                    .resizable()
                    .frame(width: 120,height: 120)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color.clear)
                    )
            }
        }
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.App.gray, lineWidth: 1)
                .shadow(color: Color.App.green.opacity(1), radius: 3, x: 3, y: 5)
        )
        .padding(.horizontal)
    }
}

