//
//  AppNetwork.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 8/7/25.
//

import Foundation
import SwiftUI
import Network

@MainActor
class Monitor: ObservableObject {
    private let monitor = NWPathMonitor()
    private let queue = DispatchQueue(label: "Monitor")

    @Published var status: NetworkStatus = .connected
    @Published var noInternet: Bool = false
  
    init() {
        monitor.pathUpdateHandler = { [weak self] path in
            guard let self = self else { return }

            DispatchQueue.main.async {
                if path.status == .satisfied {
                    print("We're connected!")
                    self.status = .connected
                    self.noInternet = false
                } else {
                    print("No connection.")
                    self.status = .disconnected
                    self.noInternet = true
                }
            }
        }
        monitor.start(queue: queue)
    }
}

enum NetworkStatus: String {
    case connected
    case disconnected
}
