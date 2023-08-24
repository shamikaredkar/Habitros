//
//  ProfileView.swift
//  Habitros
//
//  Created by Shamika Redkar on 2023-08-23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List{
            Section{
                HStack {
                    Text("SR")
                        .bold()
                        .font(.system(size: 15, weight: .bold, design: .rounded))
                        .frame(width: 72, height: 72)
                        .background(.gray)
                        .foregroundColor(.white)
                    .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 4){
                        Text("Shamika Redkar")
                            .bold()
                            .font(.system(size: 15, weight: .bold, design: .rounded))
                            .padding(.top, 4)
                        Text("test@gmail.com")
                            .bold()
                            .font(.system(size: 15, weight: .bold, design: .rounded))
                            .accentColor(.gray)
                    }//Vstack
                    .padding(.horizontal)
                }//Hstack
            }//Section
            Section("General"){
                
            }//Section
            Section("Account"){
                
            }//Section
        }//List
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
