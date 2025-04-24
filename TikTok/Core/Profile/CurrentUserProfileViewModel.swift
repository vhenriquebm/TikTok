//
//  CurrentUserProfileViewModel.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 24/04/25.
//

import Foundation

class CurrentUserProfileViewModel: ObservableObject {
    private var service: AuthenticationServiceProtocol
    
    init(service: AuthenticationServiceProtocol) {
        self.service = service
    }
    
    func signout() {
        self.service.signout()
    }
}
