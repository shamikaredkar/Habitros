//
//  TextView.swift
//  Habitros
//
//  Created by Shamika Redkar on 2023-08-24.
//

import SwiftUI

struct TextView: View {
    let text: String
    var body: some View {
        Text(text)
//            .bold()
            .font(.system(size: 15, weight: .bold, design: .rounded))
            .fontWeight(.semibold)
        
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "Text")
    }
}
