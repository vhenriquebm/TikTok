//
//  AuthenticationServiceProtocol.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 23/04/25.
//

import Foundation
import FirebaseAuth
import Combine

protocol AuthenticationServiceProtocol {
    func login(with email: String, password: String) async throws
    func create(user: User) async throws
    func signout()
    func updateUserSession()
    var userSession: FirebaseAuth.User? { get } 
}
