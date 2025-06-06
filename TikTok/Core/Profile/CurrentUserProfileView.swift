//
//  CurrentUserProfileView.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 30/01/25.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @StateObject var viewModel: CurrentUserProfileViewModel
    
    init(viewModel: CurrentUserProfileViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                VStack(spacing: 16) {
                    
                    ProfileHeaderView()
                    
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Sign Out") {
                        viewModel.signout()
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(viewModel: CurrentUserProfileViewModel(service: AuthenticationService()))
}


