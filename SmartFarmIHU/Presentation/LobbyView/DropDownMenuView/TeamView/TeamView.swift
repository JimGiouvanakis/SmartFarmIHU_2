//
//  TeamView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/12/24.
//

import SwiftUI

struct TeamView: View {
    
    @StateObject var viewModel = TeamViewModel()
    
    @State var viewRightOffset: CGFloat = -500
    @State var viewLeftOffset: CGFloat = 500
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
//            VStack {
//                Text(AppTextConstants.team)
//                    .font(.title)
//                    .foregroundColor(Color.App.gray)
//                    .padding(10)
//                
//            }
            
            ForEach(AppTextConstants.teamMembers, id: \.self) { member in

                    if member.side {
                        TeamRightView(member: member)
                            .padding(.trailing,20)
                            .offset(x: viewRightOffset)
                            .onAppear {
                                withAnimation(.easeOut(duration: 0.7)) {
                                    viewRightOffset = 0
                                }
                            }
                    } else {
                        TeamLeftView(member: member)
                            .padding(.leading,20)
                            .offset(x: viewLeftOffset)
                            .onAppear {
                                withAnimation(.easeOut(duration: 0.7)) {
                                    viewLeftOffset = 0
                                }
                            }
                    }
                }
                
            }
            .padding(.vertical,10)
        }
        .onAppear {
            
        }
    }
}

#Preview {
    TeamView()
}
