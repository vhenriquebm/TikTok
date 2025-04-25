//
//  ExploreView.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 11/12/24.
//

import SwiftUI

struct ExploreView: View {
    @StateObject var viewModel = ExploreViewModel(service: MockUserService())

    var body: some View {
        NavigationStack {
            ScrollView {
                
                LazyVStack(spacing: 16) {
                    
                    ForEach(viewModel.users) { user in
                        UserCell(user: user)
                            .padding(.horizontal)
                    }
                    
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    ExploreView()
}
