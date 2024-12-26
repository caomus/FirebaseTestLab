//  AlertView.swift
//  Module TrueIDFirebaseTestLab
//
//  Created on 18/12/24.

import SwiftUI

struct AlertView: View {
    @ObservedObject var viewModel: AlertViewModel
    @State private var message = ""
    @State private var sender = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Message")
                .accessibilityLabel("txt_description_message")
                .font(.caption)
                .padding()
            TextField("Input message", text: $message)
                .accessibilityLabel("txt_field_message")
                .textFieldStyle(.roundedBorder)
                .lineLimit(5)                
                .padding()
            Text("You Name")
                .accessibilityLabel("txt_description_sender")
                .font(.caption)
                .padding()
            TextField("Enter you name", text: $sender)
                .accessibilityLabel("txt_field_sender")
                .textFieldStyle(.roundedBorder)
                .lineLimit(1)
                .padding()
        }
        HStack {
            Button("Send Message") {
                viewModel.performMessage(sender: sender, message: message)
            }
            .accessibilityLabel("button_send_message")
            .alert(item: $viewModel.resultShow) { show in
                Alert(title: Text(show.name),
                      message: Text(show.message),
                      dismissButton: .cancel())
            }
        }
        .padding()        
    }
}

#Preview {
    AlertView(viewModel: AlertViewModel())
}
