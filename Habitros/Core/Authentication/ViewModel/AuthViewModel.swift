//
//  AuthViewModel.swift
//  Habitros
//
//  Created by Shamika Redkar on 2023-08-24.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init(){
        func signIn(withEmail email: String, password: String) async throws {
            print("Sign in")
        }//func
        
        func createUser(withEmail email: String, password: String, fullname: String) async throws {
            ("Create User")
        }//func
        
        func signOut(){
            
        }//func
        
        func deleteAccount() {
            
        }//func
        
        func fetchUser() async {
            
        }//func
    }//init
}//class
