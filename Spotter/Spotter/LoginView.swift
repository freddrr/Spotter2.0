//
//  LoginView.swift
//  Spotter
//
//  Created by Freddy Trae Torres on 6/12/23.
//

import Foundation
import SwiftUI

struct LoginView : View {
    @ObservedObject var viewModel = LoginViewModel()
    
    var body : some View {
        ZStack {
            VStack {
                Text("Welcome to Spotter")
                TextField("Please enter a username", text: $viewModel.username)
                Button("Return username", action: viewModel.printUsername)
            }
        }
    }
}
