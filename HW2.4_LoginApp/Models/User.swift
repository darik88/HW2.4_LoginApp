//
//  User.swift
//  HW2.4_LoginApp
//
//  Created by Айдар Рахматуллин on 25.10.2020.
//

struct User {
    let name: String
    let userName: String
    let password: String
    let info: UserInfo
}

struct UserInfo {
    let text: String
    
    
}

extension User {
    static func getUser() -> User {
        return User(name: "Айдар", userName: "user", password: "password", info: UserInfo(text: "dsdsds"))
    }
}
