//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Luis Gutierrez on 15/04/24.
//
import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
