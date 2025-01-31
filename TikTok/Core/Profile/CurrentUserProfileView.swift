//
//  CurrentUserProfileView.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 30/01/25.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
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
        }
    }
}

#Preview {
    CurrentUserProfileView()
}


