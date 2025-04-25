//
//  UserService.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 25/04/25.
//

import FirebaseAuth
import FirebaseFirestore

struct UserService: UserServiceProtocol {
    
    func upload(_ user: UserData) async throws {
        do {
            let userData = try Firestore.Encoder().encode(user)
            try await Firestore.firestore().collection("users").document(user.id).setData(userData)
            print("✅ Documento criado com sucesso para o id: \(user.id)")
        } catch {
            print("❌ Erro ao criar o usuário no Firestore: \(error.localizedDescription)")
            throw error
        }
    }
    
    func getUsers() async throws -> [UserData] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap { try? $0.data(as: UserData.self) }
    }
}

struct MockUserService: GetUsersServiceProtocol {
    func getUsers() async throws -> [UserData] {
        return [UserData(id: "1",
                         username: "caleb",
                         email: "caleb@gmail.com",
                         fullname: "caleb"),
                
                UserData(id: "2",
                         username: "sabrina",
                         email: "sabrina@gmail.com",
                         fullname: "sabrina carpenter"),
                
                UserData(id: "3",
                         username: "lady",
                         email: "lady@gmail.com",
                         fullname: "lady gaga"),
                
                UserData(id: "4",
                         username: "milley",
                         email: "milley@gmail.com",
                         fullname: "milley brown")
        ]
    }
}


