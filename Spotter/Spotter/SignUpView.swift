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
            Rectangle()
                .frame(width:300, height: 500)
                .cornerRadius(20)
                .foregroundColor(Color("Custom Color"))
                .overlay(
            VStack(spacing: 30) {
                Text("Welcome to Spotter")
                    .foregroundColor(.blue)
                    .font(.title)
                    .bold()
                    
                TextField("Please enter a email", text: $viewModel.email)
                    .multilineTextAlignment(.center)
                    .background(
                          RoundedRectangle(cornerRadius: 8)
                                .padding(.horizontal, 20)
                                .frame(height: 35)
                                .foregroundColor(Color.white)
                                    )
                TextField("Please enter a username", text: $viewModel.username)
                    .multilineTextAlignment(.center)
                .background(
                      RoundedRectangle(cornerRadius: 8)
                            .padding(.horizontal, 20)
                            .frame(height: 35)
                            .foregroundColor(Color.white)
                                )
                SecureField("Please enter a password", text: $viewModel.password)
                    .multilineTextAlignment(.center)
                .background(
                      RoundedRectangle(cornerRadius: 8)
//                            .stroke(Color.gray, lineWidth: 1)
                            .padding(.horizontal, 20)
                            .frame(height: 35)
                            .foregroundColor(Color.white)
                                )
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 70, height: 35)
                          .foregroundColor(Color.black)
                              
                    Button("Register") {
                        viewModel.signIn()
                    }
                }
                   // NavigationLink("Already have an account?", value: SignInView())
                
            }
            .padding()
        )}
    }
}
