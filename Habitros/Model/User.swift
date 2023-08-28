//
//  User.swift
//  Habitros
//
//  Created by Shamika Redkar on 2023-08-24.
//

import Foundation


//Codable: allows you to take incoming raw json data and map it to data object 
struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    
    //to get initials
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullname){
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }//if
        return ""
    }
}

extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, fullname: "Kobe Bryant", email: "test@gmail.com")
}
