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
    
    func login(user: User) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: user.email, password: user.password)
            self.userSession = result.user
        } catch {
            throw error
        }
    }
    
    func create(user: User) async throws {
        
        do {
            let result = try await Auth.auth().createUser(withEmail: user.email, password: user.password)
            self.userSession = result.user
        } catch {
            throw error
        }
    }
    
    func signout() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
}
