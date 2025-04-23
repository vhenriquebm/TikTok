//
//  RegistrationViewModel.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 23/04/25.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    private let service: AuthenticationServiceProtocol
    
    init(service: AuthenticationServiceProtocol) {
        self.service = service
    }
    
    func create(user: User) async {
        
        do {
            try await service.create(user: user)
        } catch {
            print(error)
        }
    }
}
