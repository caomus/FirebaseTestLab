//  AlertViewModel.swift
//  Module TrueIDFirebaseTestLab
//
//  Created on 18/12/24.


import Foundation
import Combine
import SwiftUI

class AlertViewModel: ObservableObject {
    
    @Published var resultShow: AlertModel?
    
    func performMessage(sender: String, message: String) {
        resultShow = AlertModel(name: sender, message: message)
    }

}
