//
//  UserCell.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 11/12/24.
//

import SwiftUI

struct UserCell: View {
    let user: UserData

    var body: some View {
        
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))
            
            VStack(alignment: .leading) {
                Text(user.username)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text(user.fullname)
                    .font(.footnote)
            }
            
            Spacer()
        }
    }
}

#Preview {
    UserCell(user: UserData(id: "0",
                            username: "caleb",
                            email: "caleb@gmail.com",
                            fullname: "caleb",
                            bio: nil,
                            profileImageUrl: nil))
}
