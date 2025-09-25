//
//  PrivacyView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 25/9/25.
//

import SwiftUI

struct PrivacyView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Privacy Policy")
                .foregroundColor(Color.black)
                .font(.system(size: 20, weight: .bold))
            
            Text("This Privacy Policy governs your use of the application SmartFarm for mobile devices that was created by International Hellenic University.")
            
            Text("What Information Does the Application Obtain?")
                .foregroundColor(Color.black)
                .font(.system(size: 20, weight: .bold))
            
            Text("The Application uses your device's camera. We do not collect, store, or transmit any photos or videos taken with the Application. All images and video are saved locally on your device's photo library only at your request.")
            
            Text("Does the Application Collect Location or Other Personal Data?")
                .foregroundColor(Color.black)
                .font(.system(size: 20, weight: .bold))
            
            Text("No. The Application does not collect or transmit any personally identifiable information about you, such as your name, email address, or location. We do not use any third-party analytics or advertising services that would track your usage or collect data.")
            
            Text("What are my opt-out rights?")
                .foregroundColor(Color.black)
                .font(.system(size: 20, weight: .bold))
            
            Text("You can stop all collection of information by the Application easily by uninstalling the Application. You may use the standard uninstall processes as may be available as part of your mobile device or mobile application marketplace or network. You can also revoke camera access for the Application at any time through your device's settings.")
            
            Text("Contact Us")
                .foregroundColor(Color.black)
                .font(.system(size: 20, weight: .bold))
            
            Text("If you have any questions regarding privacy while using the Application, or have questions about our practices, please contact us via email at info@ict.ihu.gr.")
            
        }
        .padding(.horizontal,10)
        .padding(.top)
    }
}

#Preview {
    PrivacyView()
}
