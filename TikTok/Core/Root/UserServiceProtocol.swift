//
//  UserServiceProtocol.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 25/04/25.
//

import Foundation

protocol UploadUserServiceProtocol {
    func upload(_ user: UserData) async throws
}

protocol GetUsersServiceProtocol {
    func getUsers() async throws -> [UserData]
}

typealias UserServiceProtocol = UploadUserServiceProtocol & GetUsersServiceProtocol
