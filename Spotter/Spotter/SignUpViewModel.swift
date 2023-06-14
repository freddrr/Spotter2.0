//
//  LoginViewModel.swift
//  Spotter
//
//  Created by Freddy Trae Torres on 6/12/23.
//

import Foundation

@MainActor
class SignUpViewModel : ObservableObject {
    var number : Int = 0
    var email : String = ""
    var username : String = ""
    var password : String = ""
    
    func signIn() {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found.")
            return
        }
        
        Task {
            do {
                let userData: () = try await AuthManager.shared.createUser(email: email, password: password)
                print(userData)
            }
            catch {
                print("Error")
            }
        }
        }
    
    func increment() {
        print(number)
        number = number + 1
        print(number)
    }
    
    func printEmail() {
        print(email)
       
    }
    
    func printUsername() {
        print(username)
       
    }
    
    func printPassword() {
        print(password)
       
    }
}
