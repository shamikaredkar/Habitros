//
//  HabitrosApp.swift
//  Habitros
//
//  Created by Shamika Redkar on 2023-08-23.
//

import SwiftUI

@main
struct HabitrosApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
