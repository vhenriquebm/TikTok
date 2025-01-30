//
//  NotificationsCell.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 11/12/24.
//

import SwiftUI

struct NotificationsCell: View {
    
    var body: some View {
        
        HStack {
            
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(Color(.systemGray5))
            
            HStack {
                
                Text("Checo ")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                
                Text("liked one of your posts ")
                    .font(.footnote) +
                
                Text("3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
                
            }
            
            Spacer()
            
            Rectangle()
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationsCell()
}
