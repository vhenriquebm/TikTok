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
    func login(user: User) async throws
    func create(user: User) async throws
    func signout()
    func updateUserSession()
    var userSession: FirebaseAuth.User? { get } 
}
