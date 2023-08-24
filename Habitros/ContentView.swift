//
//  ContentView.swift
//  Habitros
//
//  Created by Shamika Redkar on 2023-08-24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        Group{
            if viewModel.userSession != nil {
                ProfileView()
            }else {
                LoginView()
            }//if-else
        }//Group
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
