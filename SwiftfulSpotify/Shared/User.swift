//
//  User.swift
//  SwiftfulSpotify
//
//  Created by user274186 on 2/4/25.
//

import Foundation

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height: Double // <- Double not Int
    let weight: Double
}
