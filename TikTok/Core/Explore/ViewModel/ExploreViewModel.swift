//
//  NotificationsViewModel.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 25/04/25.
//

import Foundation

@MainActor
class ExploreViewModel: ObservableObject {
    private var service: GetUsersServiceProtocol
    @Published var users = [UserData]()
    
    init(service: GetUsersServiceProtocol) {
        self.service = service
        
        Task { try await getUsers() }
    }
    
    func getUsers() async throws {
        do {
            self.users = try await service.getUsers()
        } catch {
            print (error)
        }
    }
}
