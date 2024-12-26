//  AlertModel.swift
//  Module TrueIDFirebaseTestLab
//
//  Created on 18/12/24.

struct AlertModel: Identifiable {
    var id: String { name }
    let name: String
    let message: String
    
    init(name: String, message: String) {
        self.name = name
        self.message = message
    }
}
