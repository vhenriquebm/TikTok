//
//  User.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 23/04/25.
//

import Foundation

struct User: Decodable {
    let email: String
    let password: String
    let username: String
    let fullname: String
}


struct UserData: Identifiable, Codable {
    let id: String
    let username: String
    let email: String
    let fullname: String
    var bio: String?
    var profileImageUrl: String?
}
