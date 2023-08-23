//
//  ContentView.swift
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
//            ZStack{
//                Text("thrive")
//                    .foregroundColor(Color("Gray1"))
//                    .font(.system(size: 20, weight: .bold, design: .rounded))
//                    .shadow(color: Color("Gray1"), radius: 5, x: 1, y: 1)
//
//                Circle() //Gray circle
//                    .stroke(lineWidth: 5)
//                    .frame(width: 150, height: 150)
//                    .foregroundColor(Color("Blue1"))
//
//                Circle() //Ring
//                    .trim(from: 0, to: 1/4)
//                    .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
//                    .frame(width: 150, height: 150)
//                    .foregroundColor(Color("Gray1"))
//                //small circle at the rings tip
//                    .overlay(Circle()
//                        .frame(width: 15, height: 15)
//                        .foregroundColor(Color("Gray1"))
//                        .offset(x: 0, y: 75)
//                    ).shadow(color: Color("Gray1"), radius: 5, x: 1, y: 1)
//                    .offset()
//                    .rotationEffect(.degrees(isSpinning ? 360 : 0))
//                    .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
//                    .onAppear(){
//                        self.isSpinning.toggle()
//                    }
//            }//Zstack
//            .padding(.bottom)
//            .offset(x: -0, y: -300)
            VStack(spacing: 40){
//                HStack(spacing:50){
                Text("Habitrós")
                    .foregroundColor(Color("Gray1"))
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(x: -100, y: -90)

//                }//Hstack
                Text("where goals become gains")
                    .foregroundColor(Color("Gray1"))
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .offset(x: -55, y: -130)
                
                VStack(){
                    TextField("Email", text: $email)
                        .foregroundColor(Color("Gray1"))
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .textFieldStyle(.plain)
                        .placeholder(when: email.isEmpty) {
                            Text("")
                                .foregroundColor(.white)
                                .bold()
                        }
                                        
                    VStack(spacing: 30){
                        
                        Rectangle()
                            .frame(width: 350, height: 1)
                            .foregroundColor(Color("Gray1"))
                        
                        SecureField("Password", text: $password)
                            .foregroundColor(Color("Gray1"))
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .textFieldStyle(.plain)
                            .placeholder(when: password.isEmpty) {
                                Text("")
                                    .foregroundColor(Color("Gray1"))
                                    .bold()
                            }
                        

                    }//Vstack
                
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(Color("Gray1"))
                    
                    Button{
                        //signup
                    } label: {
                        Text("Sign up")
                            .bold()
                            .frame(width: 200, height: 40)
                            .foregroundColor(.black)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .fill(.linearGradient(colors: [Color("Gray1")], startPoint: .top, endPoint: .bottomTrailing))
                                    .opacity(0.5)
                            )
                    }//Button
                    .padding(.vertical, 20)
                                        
                        
                }//Vstack
                .frame(width: 350)
                .offset(x: -5, y: -120)

                
                
            }//Vstack
            .padding(.top)

        }//ZStack
        .ignoresSafeArea()
    }
}

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
