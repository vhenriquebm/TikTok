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
    let userService = UserService()
    
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
            try await self.upload(id: result.user.uid, user: user)
        } catch {
            throw error
        }
    }
    
    func signout() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    
    func upload(id: String, user: User) async throws {
        
        let user = UserData(id: id,
                            username: user.username,
                            email: user.email,
                            fullname: user.fullname)
        
        try await userService.upload(user)
    }
}
