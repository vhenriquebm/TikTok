//
//  ContentView.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 04/11/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ContentViewModel
    private let authenticationService: AuthenticationService
    
    init(authenticationService: AuthenticationService) {
        self.authenticationService = authenticationService
        
        let vm = ContentViewModel(service: authenticationService)
        self._viewModel = StateObject(wrappedValue: vm)
    }
    
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                MainTabView(authenticationService: authenticationService)
            } else {
                let viewModel = LoginViewModel(service: authenticationService)
                LoginView(viewModel: viewModel)
            }
        }
    }
}

#Preview {
    ContentView(authenticationService: AuthenticationService())
}
