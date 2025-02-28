//
//  UserModel.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 25/02/25.
//

import Foundation

struct User: Decodable {
    let id: String
    let name: String
    let email: String
    let Role: UserRole
    let avatarURL: String?
    let createdAt: Date
    let updatedAt: Date
    let jwtToken: String
    let refreshToken: String?
}

enum UserRole: String, Decodable {
    case user = "USER"
    case admin = "ADMIN"
}
