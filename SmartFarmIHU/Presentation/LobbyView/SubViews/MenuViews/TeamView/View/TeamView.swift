//
//  TeamView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 13/12/24.
//

import SwiftUI

struct TeamView: View {
    
    // MARK: - Properties
    
    @State var viewRightOffset: CGFloat = -300
    @State var opacity: Double = 0
    @State var viewLeftOffset: CGFloat = 300
    @State var headerOffset: CGFloat = -100
    
    @State var teamMembers: [LobbyView.UIModel]
    
    // MARK: - View
    
    var body: some View {
        ZStack {
            self.makeMainView()
        }
    }
    
    // MARK: - ViewBuilders
    
    @ViewBuilder
    private func makeMainView() -> some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                
                self.makeTitle()
                
                self.makeMembers()
                
            }
            .padding(.vertical,10)
        }
    }
    
    @ViewBuilder
    private func makeTitle() -> some View {
        Text(ViewStrings.title.localized)
            .padding(6)
            .font(.system(size: 25, weight: .bold))
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
    }
    
    @ViewBuilder
    private func makeMembers() -> some View {
        ForEach(self.teamMembers, id: \.id) { member in
            self.makeMember(member)
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
    
    @ViewBuilder
    private func makeMember(_ member: LobbyView.UIModel) -> some View {
        HStack {
            if member.side {
                Image(member.image)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 0.3 ,height: UIScreen.main.bounds.height * 0.13)
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
    
    // MARK: - Methods
    
    // ..
}

// MARK: - Localization

extension TeamView {
    enum ViewStrings: String, LocalizableProtocol {
        
        //  MARK: - TeamView
        
        case title                              = "teamView_title"
        
        var tableName: String {
            "Localizable"
        }
    }
}

#Preview {
    LobbyView(resetApp: .constant(true))
}
