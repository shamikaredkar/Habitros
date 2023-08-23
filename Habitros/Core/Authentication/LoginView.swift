//
//  LoginView.swift
//  Habitros
//
//  Created by Shamika Redkar on 2023-08-19.
//

import SwiftUI

struct ContentView: View {
    
    //Login variables
    @State private var email = ""
    @State private var password  = ""
    
    //Logo Variables
    @State private var isSpinning = false
    
    //Animation variables
    @FocusState var isEnabled: Bool
    
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
                    
                    InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                    }//Vstack
                .padding(.horizontal)
                    
                    Button{
                        //signup
                    } label: {
                        HStack{
                            Text("SIGN IN")
                                .bold()
                                .font(.system(size: 15, weight: .bold, design: .rounded))
                            Image(systemName: "arrow.right")
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
                
                
                //SignUp Button
                NavigationLink{
                    
                }label: {
                    HStack{
                        Text("Don't have an account?")
                        Text("Sign up today!")
                    }
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                }
                                        
                        
                }//Vstack
                .frame(width: 350)
                .offset(x: -5, y: -120)

                
                
            }//Vstack
            .padding(.top)

        }//ZStack
//        .ignoresSafeArea()
    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            ZStack(alignment: alignment){
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}//extension
