//
//  AuthenticationService.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 23/04/25.
//

import Foundation
import Firebase

struct User {
    let email: String
    let password: String
    let username: String
    let fullname: String
}

protocol AuthenticationServiceProtocol {
    func login(with email: String, password: String) async throws
    func create(user: User) async throws
    func signout()
}

class AuthenticationService: AuthenticationServiceProtocol {
    
    func login(with email: String, password: String) async throws {
        
    }
    
    func create(user: User) async throws {
        
    }
    
    func signout() {
        
    }
}
