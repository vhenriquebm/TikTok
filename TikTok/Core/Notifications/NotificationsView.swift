//
//  NotificationsView.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 11/12/24.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                LazyVStack(spacing: 24) {
                    ForEach(0..<20) { notification in
                        NotificationsCell()
                            .padding()
                    }
                }
            }
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
        
    }
}

#Preview {
    NotificationsView()
}
