//
//  UserDefeultsManager.swift
//  RegisterAppTest
//
//  Created by Solomon  on 24.12.2022.
//

import Foundation

class DataBase {
    
    static let shared  = DataBase()
    
    enum SettingKeys: String {
        case users
        case acttiveUser
    }
    
    let defaults = UserDefaults.standard
    let settingKey = SettingKeys.users.rawValue
    let activeUserKey = SettingKeys.acttiveUser.rawValue
    
    var users: [User] {
        get {
            if let data = defaults.value(forKey: settingKey) as? Data {
                return try! PropertyListDecoder().decode([User].self, from: data)
            }else {
                return [User]()
            }
        }
        
        set {
            if let data = try?PropertyListEncoder().encode(newValue) {
                defaults.set(data, forKey: settingKey)
            }
        }
    }
    
    func saveUser(firstName: String, secondName: String, phoneNumber: String, email: String, password: String, age: Date){
        
        let user = User(firstName: firstName, secondName: secondName, phoneNumber: phoneNumber, email: email, password: password, age: age)
        users.insert(user, at: 0)
    }
    
    var activeUser: User? {
        get {
            if let data = defaults.value(forKey: activeUserKey) as? Data {
                return try! PropertyListDecoder().decode(User.self, from: data)
            }else {
                return nil
            }
        }
        
        set {
            if let data = try?PropertyListEncoder().encode(newValue) {
                defaults.set(data, forKey: activeUserKey)
            }
        }
    }
    
    func saveActiveUser(user: User) {
        activeUser = user
    }
    
}
