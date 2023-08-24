//
//  InputView.swift
//  Habitros
//
//  Created by Shamika Redkar on 2023-08-23.
//

import SwiftUI

struct InputView: View {
    
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading){
            
            TextView(text: title)
                .foregroundColor(Color("Gray1"))
            
            //Password field
            if isSecureField{
                SecureField(placeholder, text:$text)
                    .font(.system(size: 15, weight: .bold, design: .rounded))
            }else{
                TextField(placeholder, text:$text)
                    .font(.system(size: 15, weight: .bold, design: .rounded))
            }//if-else
            Rectangle()
                .frame(width: 350, height: 1)
                .foregroundColor(Color("Gray1"))
        }//Vstack
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(text: .constant(""), title: "Email Address", placeholder: "name@example.com")
    }
}
