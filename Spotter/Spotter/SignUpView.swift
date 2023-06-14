//
//  LoginView.swift
//  Spotter
//
//  Created by Freddy Trae Torres on 6/12/23.
//

import Foundation
import SwiftUI

struct SignUpView : View {
    @ObservedObject var viewModel = SignUpViewModel()
    
    var body : some View {
        ZStack {
            VStack {
                Text("Welcome to Spotter")
                    .foregroundColor(.blue)
                    
                TextField("Please enter a email", text: $viewModel.email)
                    .multilineTextAlignment(.center)
                    .padding(7)
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(
                          RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                                .padding(.horizontal, 20)
                                    )
                TextField("Please enter a username", text: $viewModel.username)
                    .multilineTextAlignment(.center)
                    .padding(7)
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(
                          RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                                .padding(.horizontal, 20)
                                    )
                SecureField("Please enter a password", text: $viewModel.password)
                    .multilineTextAlignment(.center)
                    .padding(7)
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(
                          RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                                .padding(.horizontal, 20)
                                    )
                Button("Register") {
                    viewModel.signIn()
                }
                   // NavigationLink("Already have an account?", value: SignInView())
                
            }
            .padding()
        }
    }
}
