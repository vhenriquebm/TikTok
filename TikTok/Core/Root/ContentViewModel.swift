//
//  ContentViewModel.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 23/04/25.
//

import Foundation
import FirebaseAuth
import Combine

@MainActor
class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private let service: AuthenticationService
    private var cancellables = Set<AnyCancellable>()
    
    init(service: AuthenticationService) {
        self.service = service
        
        setupSubscribers()
        service.updateUserSession()
    }
    
    private func setupSubscribers() {
        
        service.$userSession
            .receive(on: DispatchQueue.main)
            .sink { [ weak self ] user in
            self?.userSession = user
        }
        .store(in: &cancellables)
    }
}
