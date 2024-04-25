//
//  User.swift
//  ToDoList
//
//  Created by Luis Gutierrez on 15/04/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
