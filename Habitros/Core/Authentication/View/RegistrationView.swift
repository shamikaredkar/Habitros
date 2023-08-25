//
//  RegistrationView.swift
//  Habitros
//
//  Created by Shamika Redkar on 2023-08-23.
//

import SwiftUI

struct RegistrationView: View {
    
    //Auth variables
    @EnvironmentObject var viewModel: AuthViewModel

    
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundColor (Color("Blue2"))
                .frame(width:2000, height: 550)
                .rotationEffect(.degrees(135))
                .offset(y: -390)
                .shadow(color: Color("Blue2"), radius:10)
            VStack(spacing: 40){
//                HStack(spacing:50){
                Text("Habitrós")
                    .foregroundColor(Color("Gray1"))
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(x: -100, y: -0)

//                }//Hstack
                Text("where goals become gains")
                    .foregroundColor(Color("Gray1"))
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .offset(x: -55, y: -30)
                
                VStack(spacing: 24){
                    
                    InputView(text: $email, title: "Email Address", placeholder: "name@example.com", isSecureField: false)
                        .autocapitalization(.none)
                    
                    InputView(text: $fullname, title: "Full Name", placeholder: "Enter your full name", isSecureField: false)
                    
                    InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                    
                    InputView(text: $confirmPassword, title: "Confirm Password", placeholder: "Confirm your password", isSecureField: true)
                    }//Vstack
                .padding(.horizontal)
                    
                    Button{
                        Task{
                            try await viewModel.createUser(withEmail: email, password: password, fullname: fullname)
                        }//Task
                    } label: {
                        HStack{
                            Text("SIGN UP")
                                .bold()
                                .font(.system(size: 15, weight: .bold, design: .rounded))
                            Image(systemName: "arrow.up")
                                .fontWeight(.bold)
                        }//Hstack
                        .frame(width: 150, height: 40)
                        .foregroundColor(.black)
                    }//Button
                    .background(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(.linearGradient(colors: [Color("Gray1")], startPoint: .top, endPoint: .bottomTrailing))
                            .opacity(0.5)
                    )
                
                Button{
                    dismiss()
                }label: {
                    Text("ALready have an account?")
                    Text("Sign in!")
                        .fontWeight(.bold)
                }//button
                
                }//Vstack
                .frame(width: 350)
                .offset(x: -5, y: -120)
                .padding(.top, 150)

                
                
            }//Vstack
            .padding(.top)

        }//ZStack
//        .ignoresSafeArea()
    }//body


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
