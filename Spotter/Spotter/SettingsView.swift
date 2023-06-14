//
//  SettingsView.swift
//  Spotter
//
//  Created by Freddy Trae Torres on 6/14/23.
//

import SwiftUI

@MainActor
final class SettingsViewModel : ObservableObject {
    
    func logOut() throws {
        try AuthManager.shared.signOut()
    }
}

struct SettingsView: View {
    
    @StateObject private var viewModel = SettingsViewModel()
    @Binding var showSignUp: Bool
    
    var body: some View {
        List {
            Button("Log out") {
                Task {
                    do {
                        try viewModel.logOut()
                        showSignUp = true
                    } catch {
                        print(error)
                    }
                }
                
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(showSignUp: .constant(false))
    }
}
