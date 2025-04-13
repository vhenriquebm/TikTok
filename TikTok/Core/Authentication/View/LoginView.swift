//
//  LoginView.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 03/02/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        NavigationStack {
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
                    
                    NavigationLink {
                        Text("Forgot Password?")
                    } label: {
                        Text("Forgot Password?")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.top)
                            .padding(.trailing, 28)
                            .frame(maxWidth: .infinity, alignment: .trailing)
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
                    
                    
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                } label: {
                    HStack(spacing: 3) {
                        Text("Don´t have an account?")
                        
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .padding(.vertical)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
