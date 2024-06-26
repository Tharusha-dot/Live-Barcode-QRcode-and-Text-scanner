//
//  BarcodeTextScannerApp.swift
//  BarcodeTextScanner
//
//  Created by tharusha nuwansara on 2024-06-05.
//

import SwiftUI

@main
struct BarcodeTextScannerApp: App {
    
    @StateObject private var vm = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
                .task {
                    await vm.requestDataScannerAccessStatus()
                }
        }
    }
}
