//
//  UserStackView.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 30/01/25.
//

import SwiftUI

struct UserStackView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text(title)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStackView(value: 7, title: "Followers")
}
