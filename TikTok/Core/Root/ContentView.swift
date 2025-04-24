//
//  ContentView.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 04/11/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ContentViewModel = ContentViewModel(service: AuthenticationService())
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                MainTabView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
