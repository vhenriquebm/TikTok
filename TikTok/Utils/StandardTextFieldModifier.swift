//
//  StandardTextFieldModifier.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 03/02/25.
//

import SwiftUI

struct StandardTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal,24)
    }
}
