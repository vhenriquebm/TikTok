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
    @StateObject var viewModel: LoginViewModel
    
    init(viewModel: LoginViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
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
                        Task {
                            await viewModel.login(with: email, password: password)
                        }
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
                    .disabled(!formIsValid)
                    .opacity(formIsValid ? 1 : 0.7)
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView(viewModel: RegistrationViewModel(service: AuthenticationService()))
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

//MARK: - AuthenticationFormProtocol

extension LoginView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
    }
}

#Preview {
    LoginView(viewModel: LoginViewModel(service: AuthenticationService()))
}
