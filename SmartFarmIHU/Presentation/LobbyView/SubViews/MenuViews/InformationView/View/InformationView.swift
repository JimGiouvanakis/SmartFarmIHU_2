//
//  InformationView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 16/1/25.
//

import SwiftUI

struct InformationView: View {
    
    @StateObject var viewModel = InformationViewModel()
    
    var body: some View {
        VStack {
            HStack {
                
                makeSmartAgriculture()
                
                makeWinningsAndDiseases()
            }
            
            makePackage()
            
            VStack {
                HStack {
                    makeGlobalConferences()
                    
                    makeLocalConferences()
                }
                makeMagaZines()
            }
        }
        .padding(.vertical,10)
        .onAppear {
            viewModel.addDelay()
        }
    }
    
    
    @ViewBuilder
    func makeSmartAgriculture() -> some View {
        VStack {
            VStack {
                Text(AppTextConstants.SmartAgricultureTitle)
                    .padding(10)
                    .font(.system(size: 16, weight: .bold))
                
                Text(AppTextConstants.SmartAgricultureSubTitle)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                    .padding(.bottom,10)
            }
            .background (
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.App.backgroundGreen)
                    .shadow(color: Color.App.green.opacity(0.5), radius: 3, x: 3, y: 5)
            )
            .frame(width: UIScreen.main.bounds.width - 220)
            .opacity(viewModel.showFirstItem ? 1 : 0)
            
            
            Image(AppTextConstants.PlantImage)
                .resizable()
                .frame(width: UIScreen.main.bounds.width - 230,height: 150 )
                .padding(.top,5)
                .cornerRadius(20)
                .opacity(viewModel.showFourthItem ? 1 : 0)
        }
    }
    
    @ViewBuilder
    func makeWinningsAndDiseases() -> some View {
        VStack {
            VStack {
                Text(AppTextConstants.WinningsTitle)
                    .padding(.top,8)
                    .padding(.bottom,1)
                    .font(.system(size: 16, weight: .bold))
                VStack(alignment: .leading) {
                    
                    Text(AppTextConstants.WinningsBulletList1)
                        .font(.system(size: 14, weight: .regular))
                        .padding(.horizontal,10)
                    
                    Text(AppTextConstants.WinningsBulletList1)
                        .font(.system(size: 14, weight: .regular))
                        .padding(.horizontal,10)
                    
                    Text(AppTextConstants.WinningsBulletList1)
                        .font(.system(size: 14, weight: .regular))
                        .padding(.horizontal,10)
                        .padding(.bottom,10)
                }
            }
            .frame(width: UIScreen.main.bounds.width - 220)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.App.gray, lineWidth: 1)
                    .shadow(color: Color.App.green.opacity(1), radius: 3, x: 3, y: 5)
            )
            .opacity(viewModel.showThirdItem ? 1 : 0)
            
            VStack {
                Text(AppTextConstants.DiseasesTitle)
                    .padding(.top,8)
                    .padding(.bottom,1)
                    .font(.system(size: 16, weight: .bold))
                
                VStack(alignment: .leading) {
                    Text(AppTextConstants.DiseasesBulletList1)
                        .font(.system(size: 14, weight: .regular))
                        .padding(.horizontal,10)
                    
                    Text(AppTextConstants.DiseasesBulletList2)
                        .font(.system(size: 14, weight: .regular))
                        .padding(.horizontal,10)
                        .padding(.bottom,10)
                }
            }
            .background (
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.App.backgroundGreen3)
                    .shadow(color: Color.App.green.opacity(0.5), radius: 3, x: 3, y: 5)
            )
            .frame(width: UIScreen.main.bounds.width - 220)
            .opacity(viewModel.showSecondItem ? 1 : 0)
        }
    }
    
    @ViewBuilder
    func makePackage() -> some View {
        VStack {
            Text(AppTextConstants.PackageTitle)
                .font(.system(size: 16, weight: .bold))
                .padding(.top,8)
                .padding(.bottom,1)
            
            VStack {
                Text(AppTextConstants.PackageSubTitle)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                    .padding(.bottom,10)
            }
        }
        .background (
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.App.backgroundGreen2)
                .shadow(color: Color.App.gray.opacity(0.5), radius: 3, x: 3, y: 5)
        )
        .frame(width: UIScreen.main.bounds.width - 20)
        .opacity(viewModel.showFifthItem ? 1 : 0)
    }
    
    @ViewBuilder
    func makeGlobalConferences() -> some View {
        VStack {
            
            Text(AppTextConstants.GlobalConferencesTitle)
                .padding(8)
                .font(.system(size: 16, weight: .bold))
            
            VStack(alignment: .leading) {
                Text(AppTextConstants.GlobalConferencesSubTitle)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                    .padding(.bottom,10)
            }
        }
        .background (
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.App.backgroundGreen3)
                .shadow(color: Color.App.green.opacity(0.5), radius: 3, x: 3, y: 5)
        )
        .frame(width: UIScreen.main.bounds.width - 220)
        .opacity(viewModel.showSeventhItem ? 1 : 0)
    }
    
    @ViewBuilder
    func makeLocalConferences() -> some View {
        VStack {
            Text(AppTextConstants.LocalConferencesTitle)
                .padding(8)
                .font(.system(size: 16, weight: .bold))
            
            VStack(alignment: .leading) {
                
                Text(AppTextConstants.LocalConferencesBulletList1)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                
                Text(AppTextConstants.LocalConferencesBulletList2)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                    .padding(.bottom,10)
            }
        }
        .frame(width: UIScreen.main.bounds.width - 220)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.App.gray, lineWidth: 1)
                .shadow(color: Color.App.green.opacity(1), radius: 3, x: 3, y: 5)
        )
        .opacity(viewModel.showSixthItem ? 1 : 0)
    }
    
    @ViewBuilder
    func makeMagaZines() -> some View {
        VStack {
            
            Text(AppTextConstants.MagazinesTitle)
                .padding(8)
                .font(.system(size: 16, weight: .bold))
            
            VStack(alignment: .leading) {
                Text(AppTextConstants.MagazinesBulletList1)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                
                Text(AppTextConstants.MagazinesBulletList2)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                
                Text(AppTextConstants.MagazinesBulletList3)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                    .padding(.bottom,10)
            }
        }
        .background (
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.App.backgroundGreen)
                .shadow(color: Color.App.green.opacity(0.5), radius: 3, x: 3, y: 5)
        )
        .frame(width: UIScreen.main.bounds.width - 20)
        .opacity(viewModel.showEighthItem ? 1 : 0)
    }
}

#Preview {
    LobbyView()
}
