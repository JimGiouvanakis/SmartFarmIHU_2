//
//  HomeView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 12/12/24.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    @Binding var menuSelection: MenuSelection
    
    @Binding var openSheet: Bool
    
    var body: some View {
        VStack {
            Image(AppTextConstants.MainPhotoHomePage)
                .resizable()
                .frame(width: UIScreen.main.bounds.width - 50, height: 450)
                .cornerRadius(20)
                .padding(.vertical)
            
            Text(AppTextConstants.HomeViewTitle)
                .font(.system(size: 17))
                .foregroundColor(Color.App.green)
                .padding(.bottom, 10)
            
            Button(action: {
                openSheet.toggle()
            }, label: {
                Text(AppTextConstants.HomeViewButton)
                    .font(.system(size: 19,weight: .bold))
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .frame(height: 60)
                    .foregroundColor(Color.white)
                
            })
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.App.green)
                
            )
            .shadow(color: Color.App.green.opacity(0.3),radius: 10, x: 0, y: 10)
            .padding(.bottom, 10)
            
            Text(AppTextConstants.HomeViewSubTittle)
                .font(.system(size: 16))
                .foregroundColor(Color.App.gray)
        }
        .padding([.leading,.trailing])
        .opacity(viewModel.isViewed ? 1 : 0)
        .onAppear() {
            viewModel.addDelay()
        }
    }
}

#Preview {
    LobbyView()
}
