//
//  CommentedCode.swift
//  Habitros
//
//  Created by Shamika Redkar on 2023-08-23.
//

import Foundation


//                    TextField("Email", text: $email)
//                        .foregroundColor(Color("Gray1"))
//                        .font(.system(size: 20, weight: .bold, design: .rounded))
//                        .textFieldStyle(.plain)
//                        .placeholder(when: email.isEmpty) {
//                            Text("")
//                                .foregroundColor(.white)
//                                .bold()
//                        }
//
//                    VStack(spacing: 30){
//
//                        Rectangle()
//                            .frame(width: 350, height: 1)
//                            .foregroundColor(Color("Gray1"))
//
//                        SecureField("Password", text: $password)
//                            .foregroundColor(Color("Gray1"))
//                            .font(.system(size: 20, weight: .bold, design: .rounded))
//                            .textFieldStyle(.plain)
//                            .placeholder(when: password.isEmpty) {
//                                Text("")
//                                    .foregroundColor(Color("Gray1"))
//                                    .bold()
//                            }
//


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
