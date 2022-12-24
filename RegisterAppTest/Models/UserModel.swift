//
//  UserModel.swift
//  RegisterAppTest
//
//  Created by Solomon  on 24.12.2022.
//

import Foundation

struct User: Codable {
    let firstName: String
    let secondName: String
    let phoneNumber: String
    let email: String
    let password: String
    let age: Date
}
