//
//  LoginViewModel.swift
//  Spotter
//
//  Created by Freddy Trae Torres on 6/12/23.
//

import Foundation

class LoginViewModel : ObservableObject {
    var number : Int = 0
    var email : String = ""
    var username : String = ""
    var password : String = ""
    
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
