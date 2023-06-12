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
                Button("Click Here", action: viewModel.increment)
            }
        }
    }
}
