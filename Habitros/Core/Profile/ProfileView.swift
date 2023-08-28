//
//  ProfileView.swift
//  Habitros
//
//  Created by Shamika Redkar on 2023-08-23.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        if let user = viewModel.currentUser{
            List{
                Section{
                    HStack {
                        TextView(text: user.initials)
                            .frame(width: 72, height: 72)
                            .background(.gray)
                            .foregroundColor(.white)
                        .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 4){
                            TextView(text: user.fullname)
                                .padding(.top, 4)
                            TextView(text: user.email)
                                .foregroundColor(.gray)
                        }//Vstack
                        .padding(.horizontal)
                    }//Hstack
                }//Section
                Section("General"){
                    HStack{
                        SettingsRowView(imageName: "gear", title: "Version", tintColor: Color("Gray1"))
                        
                        Spacer()
                        
                        TextView(text: "1.0.0")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }//Hstack
                }//Section
                Section("Account"){
                    Button{
                        print("Sign Out")
                    }label: {
                        SettingsRowView(imageName: "arrow.left.circle.fill", title: "SignOut", tintColor: .red)
                    }
                    Button{
                        print("Delete account")
                    }label: {
                        SettingsRowView(imageName: "xmark.circle.fill", title: "Delete sccount", tintColor: .red)
                    }
                }//Section
            }//List
        }//if
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
