//
//  ProfileHeaderView.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 11/12/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    var body: some View {
        
        VStack(spacing: 16) {
            
            VStack(spacing: 8) {
                
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                Text("@test")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            HStack(spacing: 16) {
                
                UserStackView(value: 5, title: "Folowing")
                UserStackView(value: 1, title: "Followers")
                UserStackView(value: 7, title: "Likes")
            }
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 370, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            Divider()
            
        }
    }
}

#Preview {
    ProfileHeaderView()
}
