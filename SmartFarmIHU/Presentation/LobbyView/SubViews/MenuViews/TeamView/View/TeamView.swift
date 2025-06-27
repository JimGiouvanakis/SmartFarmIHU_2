//
//  TeamView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/12/24.
//

import SwiftUI

struct TeamView: View {
    
    @StateObject var viewModel = TeamViewModel()
    
    @State var viewRightOffset: CGFloat = -300
    @State var opacity: Double = 0
    @State var viewLeftOffset: CGFloat = 300
    @State var headerOffset: CGFloat = -100
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                Text(AppTextConstants.TeamViewTitle)
                    .padding(6)
                    .font(.system(size: 25, weight: .bold, design: .default))
                    .foregroundStyle(Color.App.green)
                
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color.App.buttonTappedGreen)
                            .opacity(0.2)
                    )
                    .opacity(opacity)
                    .offset(y: headerOffset)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now()) {
                            withAnimation(.easeOut(duration: 1)) {
                                opacity = 1
                                headerOffset = 0
                            }
                        }
                    }
                
                ForEach(AppTextConstants.TeamMembers, id: \.self) { member in
                    MemberCardView(member: member)
                        .padding(.leading, member.side ? 0 : 20)
                        .padding(.trailing, member.side ? 20 : 0)
                        .offset(x: member.side ? viewRightOffset : viewLeftOffset)
                        .opacity(opacity)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now()) {
                                withAnimation(.easeOut(duration: 0.8)) {
                                    viewRightOffset = 0
                                    viewLeftOffset = 0
                                    opacity = 1
                                }
                            }
                        }
                }
                
            }
            .padding(.vertical,10)
        }
    }
}

#Preview {
    LobbyView(resetApp: .constant(true))
}
