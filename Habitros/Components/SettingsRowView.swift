//
//  SettingsRowView.swift
//  Habitros
//
//  Created by Shamika Redkar on 2023-08-23.
//

import SwiftUI

struct SettingsRowView: View {
    let imageName: String
    let title: String
    let tintColor: Color
    
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: imageName)
                .imageScale(.small)
                .font(.title)
                .foregroundColor(tintColor)
            
            TextView(text: title)
                .font(.subheadline)
                .foregroundColor(.black)
                .padding(.top, 4)
            
            
        }//Hstack
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(imageName: "gear", title: "Version", tintColor: .gray)
    }
}
