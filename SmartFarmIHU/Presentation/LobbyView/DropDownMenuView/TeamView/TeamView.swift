//
//  TeamView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/12/24.
//

import SwiftUI

struct TeamView: View {
    
    @StateObject var viewModel = TeamViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                Text(AppTextConstants.team)
                    .font(.title)
                    .foregroundColor(Color.App.gray)
                    .padding(10)
                
            }
            
            ForEach(AppTextConstants.teamMembers, id: \.self) { member in
                
                if member.side {
                    TeamRightView(member: member)
                        .padding(.trailing,20)
                } else {
                    TeamLeftView(member: member)
                        .padding(.leading,20)
                }
            }
            .padding(.vertical,10)
        }
    }
}

#Preview {
    TeamView()
}
