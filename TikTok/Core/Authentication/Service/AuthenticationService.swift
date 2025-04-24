//
//  AuthenticationService.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 23/04/25.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthenticationService: AuthenticationServiceProtocol {    
    @Published var userSession: FirebaseAuth.User?
    
    func updateUserSession() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(with email: String, password: String) async throws {
        
    }
    
    func create(user: User) async throws {
        
        do {
            let result = try await Auth.auth().createUser(withEmail: user.email, password: user.password)
        } catch {
            throw error
        }
    }
    
    func signout() {
        
    }
}
