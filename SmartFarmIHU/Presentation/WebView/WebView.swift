//
//  WebView.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 17/1/25.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        let url = URL(string: "https://smartfarm.ict.ihu.gr/plants/")
        
        if let url = url {
            
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}
 
