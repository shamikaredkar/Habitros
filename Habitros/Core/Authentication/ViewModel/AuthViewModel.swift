//
//  AuthViewModel.swift
//  Habitros
//
//  Created by Shamika Redkar on 2023-08-24.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift


//@MainActor - Publishing all our UI changes on the main thread
@MainActor
class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    
    init(){
        //If there is a current user logged in, they save that information in cache
        self.userSession = Auth.auth().currentUser
        
        Task {
            await fetchUser()
        }//Task
        
        
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
                await fetchUser()
            }catch {
                print("DEBUG: Failed to create user with error \(error.localizedDescription)")
            }//do-catch
        }//func
        
        func signOut(){
            
        }//func
        
        func deleteAccount() {
            
        }//func
        
        func fetchUser() async {
            //fetches the current user
            guard let uid = Auth.auth().currentUser?.uid else {return}
            do {
                guard let snapshot = try? await Firestore.firestore().collection("users").document(uid).getDocument() else {return}
                self.currentUser = try? snapshot.data(as: User.self)
                print("DEBUG: Current User is \(String(describing: self.currentUser ?? nil))")
            }catch{
                print("DEBUG: Failed to fetch users with error \(error.localizedDescription)")

            }
        }//func
}//class
