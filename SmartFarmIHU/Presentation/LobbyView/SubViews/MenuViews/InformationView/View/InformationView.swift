//
//  InformationView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 16/1/25.
//

import SwiftUI

struct InformationView: View {
    
    // MARK: - Properties
    
    @StateObject var viewModel = InformationViewModel()
    
    // MARK: - View
    
    var body: some View {
        ZStack {
            self.makeMainView()
        }
        .onAppear {
            self.setUp()
        }
    }
    
    // MARK: - ViewBuilder
    
    @ViewBuilder
    private func makeMainView() -> some View {
        VStack {
            HStack {
                
                self.makeSmartAgriculture()
                
                self.makeWinningsAndDiseases()
            }
            
            self.makePackage()
            
            VStack {
                HStack {
                    self.makeGlobalConferences()
                    
                    self.makeLocalConferences()
                }
                self.makeMagaZines()
            }
        }
        .padding(.vertical,10)
    }
    
    @ViewBuilder
    private func makeSmartAgriculture() -> some View {
        VStack {
            VStack {
                Text(ViewStrings.smartAgriTitle.localized)
                    .padding(10)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(Color.App.black)
                
                Text(ViewStrings.smartAgriSubTitle.localized)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                    .padding(.bottom,10)
                    .foregroundColor(Color.App.black)
            }
            .background (
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.App.backgroundGreen)
                    .shadow(color: Color.App.green.opacity(0.5), radius: 3, x: 3, y: 5)
            )
            .frame(width: UIScreen.main.bounds.width * 0.45)
            .opacity(viewModel.showFirstItem ? 1 : 0)
            
            
            Image(.plant)
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.45,height: 150 )
                .padding(.top,5)
                .cornerRadius(20)
                .opacity(viewModel.showFourthItem ? 1 : 0)
        }
    }
    
    @ViewBuilder
    private func makeWinningsAndDiseases() -> some View {
        VStack {
            VStack {
                Text(ViewStrings.winningsTitle.localized)
                    .padding(.top,8)
                    .padding(.bottom,1)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(Color.App.black)
                
                VStack(alignment: .leading) {
                    
                    Text(ViewStrings.winningsList1.localized)
                        .font(.system(size: 14, weight: .regular))
                        .padding(.horizontal,10)
                        .foregroundColor(Color.App.black)
                    
                    Text(ViewStrings.winningsList2.localized)
                        .font(.system(size: 14, weight: .regular))
                        .padding(.horizontal,10)
                        .foregroundColor(Color.App.black)
                    
                    Text(ViewStrings.winningsList3.localized)
                        .font(.system(size: 14, weight: .regular))
                        .padding(.horizontal,10)
                        .padding(.bottom,10)
                        .foregroundColor(Color.App.black)
                }
            }
            .frame(width: UIScreen.main.bounds.width * 0.45)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.App.gray, lineWidth: 1)
                    .shadow(color: Color.App.green.opacity(1), radius: 3, x: 3, y: 5)
            )
            .opacity(viewModel.showThirdItem ? 1 : 0)
            
            VStack {
                Text(ViewStrings.deseasesTitle.localized)
                    .padding(.top,8)
                    .padding(.bottom,1)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(Color.App.black)
                
                VStack(alignment: .leading) {
                    Text(ViewStrings.deseasesList1.localized)
                        .font(.system(size: 14, weight: .regular))
                        .padding(.horizontal,10)
                        .foregroundColor(Color.App.black)
                    
                    Text(ViewStrings.deseasesList2.localized)
                        .font(.system(size: 14, weight: .regular))
                        .padding(.horizontal,10)
                        .padding(.bottom,10)
                        .foregroundColor(Color.App.black)
                }
            }
            .background (
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.App.backgroundGreen3)
                    .shadow(color: Color.App.green.opacity(0.5), radius: 3, x: 3, y: 5)
            )
            .frame(width: UIScreen.main.bounds.width * 0.45)
            .opacity(viewModel.showSecondItem ? 1 : 0)
        }
    }
    
    @ViewBuilder
    private func makePackage() -> some View {
        VStack {
            Text(ViewStrings.packageTitle.localized)
                .font(.system(size: 16, weight: .bold))
                .padding(.top,8)
                .padding(.bottom,1)
                .foregroundColor(Color.App.black)
            
            VStack {
                Text(ViewStrings.packageSubTitle.localized)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                    .padding(.bottom,10)
                    .foregroundColor(Color.App.black)
            }
        }
        .background (
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.App.backgroundGreen2)
                .shadow(color: Color.App.gray.opacity(0.5), radius: 3, x: 3, y: 5)
        )
        .frame(width: UIScreen.main.bounds.width * 0.95)
        .opacity(viewModel.showFifthItem ? 1 : 0)
    }
    
    @ViewBuilder
    private func makeGlobalConferences() -> some View {
        VStack {
            Text(ViewStrings.globalTitle.localized)
                .padding(8)
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(Color.App.black)
            
            VStack(alignment: .leading) {
                Text(ViewStrings.globalSubTitle.localized)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                    .padding(.bottom,10)
                    .foregroundColor(Color.App.black)
            }
        }
        .background (
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.App.backgroundGreen3)
                .shadow(color: Color.App.green.opacity(0.5), radius: 3, x: 3, y: 5)
        )
        .frame(width: UIScreen.main.bounds.width * 0.45)
        .opacity(viewModel.showSeventhItem ? 1 : 0)
    }
    
    @ViewBuilder
    private func makeLocalConferences() -> some View {
        VStack {
            Text(ViewStrings.localTitle.localized)
                .padding(8)
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(Color.App.black)
            
            VStack(alignment: .leading) {
                
                Text(ViewStrings.localList1.localized)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                    .foregroundColor(Color.App.black)
                
                Text(ViewStrings.localList2.localized)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                    .padding(.bottom,10)
                    .foregroundColor(Color.App.black)
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.45)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.App.gray, lineWidth: 1)
                .shadow(color: Color.App.green.opacity(1), radius: 3, x: 3, y: 5)
        )
        .opacity(viewModel.showSixthItem ? 1 : 0)
    }
    
    @ViewBuilder
    private func makeMagaZines() -> some View {
        VStack {
            
            Text(ViewStrings.magazineTitle.localized)
                .padding(8)
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(Color.App.black)
            
            VStack(alignment: .leading) {
                Text(ViewStrings.magazineList1.localized)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                    .foregroundColor(Color.App.black)
                
                Text(ViewStrings.magazineList2.localized)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                    .foregroundColor(Color.App.black)
                
                Text(ViewStrings.magazineList3.localized)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                    .padding(.bottom,10)
                    .foregroundColor(Color.App.black)
            }
        }
        .background (
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.App.backgroundGreen)
                .shadow(color: Color.App.green.opacity(0.5), radius: 3, x: 3, y: 5)
        )
        .frame(width: UIScreen.main.bounds.width  * 0.95)
        .opacity(viewModel.showEighthItem ? 1 : 0)
    }
    
    // MARK: - Methods
    
    private func setUp() {
        self.viewModel.addDelay()
    }
}

// MARK: - Localization

extension InformationView {
    enum ViewStrings: String, LocalizableProtocol {
        
        //  MARK: - InformationView
        
        case smartAgriTitle                           = "infoView_smartArgi_title"
        case smartAgriSubTitle                        = "infoView_smartArgi_subtitle"
        
        case winningsTitle                            = "infoView_winnings_title"
        case winningsList1                            = "infoView_winnings_list1"
        case winningsList2                            = "infoView_winnings_list2"
        case winningsList3                            = "infoView_winnings_list3"
        
        case deseasesTitle                            = "infoView_diseases_title"
        case deseasesList1                            = "infoView_diseases_list1"
        case deseasesList2                            = "infoView_diseases_list2"
        
        case packageTitle                             = "inforView_package_title"
        case packageSubTitle                          = "inforView_package_subtitle"
        
        case globalTitle                              = "inforView_global_title"
        case globalSubTitle                           = "inforView_global_subtitle"
        
        case localTitle                               = "inforView_local_title"
        case localList1                               = "inforView_local_list1"
        case localList2                               = "inforView_local_list2"
        
        case magazineTitle                            = "inforView_magazine_title"
        case magazineList1                            = "inforView_magazine_list1"
        case magazineList2                            = "inforView_magazine_list2"
        case magazineList3                            = "inforView_magazine_list3"
        
        var tableName: String {
            "Localizable"
        }
    }
}

#Preview {
    LobbyView(resetApp: .constant(true))
}
