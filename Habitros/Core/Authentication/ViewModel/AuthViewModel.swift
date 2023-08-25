//
//  AuthViewModel.swift
//  Habitros
//
//  Created by Shamika Redkar on 2023-08-24.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init(){
        
    }//init
        func signIn(withEmail email: String, password: String) async throws {
            print("Sign in")
        }//func
        
    
    //DESCRIPTION: Async function that can potentially throw an error
    //This is what we get back from the packet manager that we installed for firestore: Auth.auth().createUser(withEmail: email, password: password) and we're going to await the result of that and store it in the result property
    //If we get our result back successfully we are going to set our userSession: self.userSession = result.user
    //Then we create OUR user property: let user = User(id: result.user.uid, fullname: fullname, email: email)
    //And then encode the object using the Codable protocol: let encodeUser = try Firestore.Encoder().encode(user)
    //Then finally upload that data using firestore: try await Firestore.firestore().collection("users").document(user.id).setData(encodeUser)
        func createUser(withEmail email: String, password: String, fullname: String) async throws {
            do{
                let result = try await Auth.auth().createUser(withEmail: email, password: password)
                self.userSession = result.user
                let user = User(id: result.user.uid, fullname: fullname, email: email)
                let encodeUser = try Firestore.Encoder().encode(user)
                try await Firestore.firestore().collection("users").document(user.id).setData(encodeUser)
            }catch {
                print("DEBUG: Failed to create user with error \(error.localizedDescription)")
            }//do-catch
        }//func
        
        func signOut(){
            
        }//func
        
        func deleteAccount() {
            
        }//func
        
        func fetchUser() async {
            
        }//func
}//class
