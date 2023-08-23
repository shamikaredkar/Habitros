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
            Text(title)
                .foregroundColor(Color("Gray1"))
                .font(.system(size: 15, weight: .bold, design: .rounded))
                .fontWeight(.semibold)
            
            //Password field
            if isSecureField{
                SecureField(placeholder, text:$text)
                    .font(.system(size: 15, weight: .bold, design: .rounded))
            }else{
                TextField(placeholder, text:$text)
                    .font(.system(size: 15, weight: .bold, design: .rounded))
            }//if-else
            Divider()
        }//Vstack
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(text: .constant(""), title: "Email Address", placeholder: "name@example.com")
    }
}
