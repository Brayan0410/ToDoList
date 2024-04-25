//
//  LoginView.swift
//  ToDoList
//
//  Created by Luis Gutierrez on 15/04/24.
//

import SwiftUI

struct LoginView: View {

@StateObject var viewModel = LoginViewViewModel()

    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "To Do List",subtitle: "Get things  done",angle: 15, background: .pink)
            
                //login form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(
                        title: "Log in",
                        background: .blue) {
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                
                //Create Account
                
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
            }
            Spacer()
            
            }
        }
    }
#Preview {
    LoginView()
}
    
    

