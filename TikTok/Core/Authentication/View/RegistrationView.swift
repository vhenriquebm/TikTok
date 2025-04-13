//
//  RegistrationView.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 03/02/25.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("tiktok-app-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $email)
                    .textInputAutocapitalization(.never)
                    .modifier(StandardTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(StandardTextFieldModifier())
                
                TextField("Enter your full name", text: $fullname)
                    .textInputAutocapitalization(.never)
                    .modifier(StandardTextFieldModifier())
                
                TextField("Enter your username", text: $username)
                    .textInputAutocapitalization(.never)
                    .modifier(StandardTextFieldModifier())
            }
            
            
            Button {
                
            } label: {
                Text("Login")
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 44)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    
                    Text("Sign in")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .padding(.vertical)
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    RegistrationView()
}
