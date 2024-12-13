//
//  TeamView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/12/24.
//

import SwiftUI

struct TeamView: View {
    var body: some View {
        ScrollView {
            VStack() {
                ZStack {
                    HStack {
                        Text(AppTextConstants.team)
                            .font(.title)
                            .foregroundColor(Color.black)
                            .padding(10)
                        
                        Spacer()
                        
                    }
                }
                .background(Color.App.headerGray)
            }
            
            ForEach(AppTextConstants.teamMembers, id: \.self) { member in
                VStack{
                    Image(member.image)
                        .resizable()
                        .frame(width: 350,height: 350)
                    
                    Spacer()
                    
                    Group {
                        HStack {
                            Text(member.name)
                                .bold()
                                .font(.title2)
                                .foregroundColor(Color.App.green)
                            
                            Spacer()
                        }
                        
                        Spacer ()
                        
                        HStack {
                            Text(member.academicRole)
                                .font(.title3)
                            
                            Spacer()
                        }
                        
                        Spacer()
                        
                        HStack {
                            Text(member.projectRole)
                                .font(.title3)
                            Spacer()
                        }
                    }
                    .padding(.leading)
                }
            }
        }
    }
}

#Preview {
    TeamView()
}
