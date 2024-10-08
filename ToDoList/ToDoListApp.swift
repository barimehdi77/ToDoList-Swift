//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Bari Mehdi77 on 25/8/2024.
//

import SwiftUI

/*
 
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manage Models for View
 
 */

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
        .environmentObject(listViewModel)
    }
}
