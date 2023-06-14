//
//  AuthManager.swift
//  Spotter
//
//  Created by Freddy Trae Torres on 6/14/23.
//

import Foundation
import FirebaseAuth

struct AuthResultModel {
    let uid: String
    let email: String?
    let photoURL: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        self.photoURL = user.photoURL?.absoluteString
    }
}

final class AuthManager {
    
    static let shared = AuthManager()
    private init() {}
    
    func getAuthenticatedUser() throws -> AuthResultModel {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        return AuthResultModel(user: user)
    }
    
    func createUser(email: String, password: String) async throws {
        let authResult = try await Auth.auth().createUser(withEmail: email, password: password)
        let result = AuthResultModel(user: authResult.user)
    }
    
    func signOut() throws {
       try Auth.auth().signOut()
    }
}
