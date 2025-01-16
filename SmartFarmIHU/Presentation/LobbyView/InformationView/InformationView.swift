//
//  InformationView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 16/1/25.
//

import SwiftUI

struct InformationView: View {
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
            }
        }
        .padding(.vertical,10)
    }
    
    
    @ViewBuilder
    func makeSmartAgriculture() -> some View {
        VStack {
            VStack {
                Text("Εξυπνη Γεωργία")
                    .padding(10)
                    .font(.system(size: 16, weight: .bold))
                
                Text("Η Έξυπνη Γεωργία, ή αλλιώς Ευφυής Γεωργία, αποτελεί μια σύγχρονη προσέγγιση της κλασικής γεωργίας. Συνδυάζει τεχνολογίες αιχμής, αισθητήρες και ανάλυση δεδομένων για τη βελτιστοποίηση των αγροτικών δραστηριοτήτων")
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
            
            Image("paper")
                .resizable()
                .frame(width: UIScreen.main.bounds.width - 230,height: 150 )
                .padding(.top,5)
                .cornerRadius(20)
        }
    }
    
    @ViewBuilder
    func makeWinningsAndDiseases() -> some View {
        VStack {
            VStack {
                Text("Τι κερδίζουμε? ")
                    .padding(.top,8)
                    .padding(.bottom,1)
                    .font(.system(size: 16, weight: .bold))
                VStack(alignment: .leading) {
                    
                    Text("• Μειώνεται το ρίσκο των καλλιεργειών")
                        .font(.system(size: 14, weight: .regular))
                        .padding(.horizontal,10)
                    
                    Text("• Αυξάνεται η ποιότητα και η απόδοση των προϊόντων")
                        .font(.system(size: 14, weight: .regular))
                        .padding(.horizontal,10)
                    
                    Text("• Ενημέρωση πορείας ή προβλήματος σε πραγματικό χρόνο")
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
            
            VStack {
                Text("Ασθένειες")
                    .padding(.top,8)
                    .padding(.bottom,1)
                    .font(.system(size: 16, weight: .bold))
                
                VStack(alignment: .leading) {
                    Text("• Προκαλούν σημαντική μείωση στη φυσική και οικονομική παραγωγικότητα")
                        .font(.system(size: 14, weight: .regular))
                        .padding(.horizontal,10)
                    
                    Text("• Μπορούν να οδηγήσουν σε απώλεια καλλιεργειών, αν δεν εντοπιστούν και αντιμετωπιστούν έγκαιρα")
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


        }
    }
    
    @ViewBuilder
    func makePackage() -> some View {
        VStack {
            Text("Πακέτα Εργασίας")
                .font(.system(size: 16, weight: .bold))
                .padding(.top,8)
                .padding(.bottom,1)
            
            VStack {
                Text("Το έργο περιλαμβάνει τη σχεδίαση αρχιτεκτονικής, την ανάπτυξη αλγορίθμων βαθιάς μάθησης και την ενσωμάτωσή τους σε διαδικτυακή εφαρμογή με λειτουργίες αυτοματισμού. Διασφαλίζεται η ποιότητα και ασφάλεια δεδομένων, ενώ το σύστημα αξιολογείται πιλοτικά. Παρέχεται υποστήριξη με προμήθεια εξοπλισμού και διάχυση των αποτελεσμάτων.")
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
    }
    
    @ViewBuilder
    func makeGlobalConferences() -> some View {
        VStack {
            
            Text("Διεθνή Συνέδρια")
                .padding(8)
            //                        .padding(.top,8)
            //                        .padding(.bottom,1)
                .font(.system(size: 16, weight: .bold))
            
            VStack(alignment: .leading) {
                Text("• Sustainable Smart Agriculture: Plant disease detection with deep learning techniques in cotton cultivation")
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
    }
    
    @ViewBuilder
    func makeLocalConferences() -> some View {
        VStack {
            Text("Εθνικά Συνέδρια")
                .padding(8)
                .font(.system(size: 16, weight: .bold))
            
            VStack(alignment: .leading) {
                
                Text("• Καταγραφή υψών καλλιεργειών και χαρακτηρισμός καλλιέργειας")
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                
                Text("•  Εντοπισμός φυτικών ασθενειών με τεχνικές βαθιάς μηχανικής μάθησης, 34ο Πανελλήνιο Συνέδριο Στατιστικής")
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
    }
    
    @ViewBuilder
    func makeMagaZines() -> some View {
        VStack {
            
            Text("Διεθνή Περιοδικά")
                .padding(8)
            //                        .padding(.top,8)
            //                        .padding(.bottom,1)
                .font(.system(size: 16, weight: .bold))
            
            VStack(alignment: .leading) {
                Text("•  Comparative analysis of convolutional neural networks for early diagnosis of plant diseases and pest in a multiclass dataset")
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                
                Text("• Smart agriculture: Predictive height analysis for universal crop health classification")
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                
                Text("• Transitioning to a Sustainable Smart Agriculture Using Deep Machine Learning Techniques: The Case of a Greek Project”")
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal,10)
                    .padding(.bottom,10)
            }
        }
        .frame(width: UIScreen.main.bounds.width - 20)
        .background (
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.App.backgroundGreen)
                .shadow(color: Color.App.green.opacity(0.5), radius: 3, x: 3, y: 5)
        )
    }
}

#Preview {
    LobbyView()
}
