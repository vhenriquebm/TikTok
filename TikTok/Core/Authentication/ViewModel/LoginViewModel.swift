//
//  LoginViewModel.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 23/04/25.
//

import Foundation

class LoginViewModel: ObservableObject {
    private let service: AuthenticationServiceProtocol
    
    init(service: AuthenticationServiceProtocol) {
        self.service = service
    }
    
    func login(with email: String, password: String) async {
        
        do {
            try await service.login(with: email, password: password)
        } catch {
            print(error)
        }
    }
}
