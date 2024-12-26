//  POCFirebaseTestLabApp.swift
//  Module POCFirebaseTestLab
//
//  Created on 20/12/24.

import SwiftUI

@main
struct POCFirebaseTestLabApp: App {
    var body: some Scene {
        WindowGroup {            
            AlertView(viewModel: AlertViewModel())
        }
    }
}
