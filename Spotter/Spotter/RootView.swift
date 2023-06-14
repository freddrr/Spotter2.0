//
//  RootView.swift
//  Spotter
//
//  Created by Freddy Trae Torres on 6/14/23.
//

import SwiftUI

struct RootView: View {
    
    @State private var showSignUp: Bool = false
    var body: some View {
        ZStack {
            NavigationStack {
                SettingsView(showSignUp: $showSignUp)
            }
        }
        .onAppear {
            let authUser = try? AuthManager.shared.getAuthenticatedUser()
            self.showSignUp = authUser == nil ? true : false
            
        }
        .fullScreenCover(isPresented: $showSignUp) {
            NavigationStack {
                SignUpView()
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
