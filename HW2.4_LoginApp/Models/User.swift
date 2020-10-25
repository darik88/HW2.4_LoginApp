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
    let info: String
}

extension User {
    static func getUser() -> User {
        return User(
            name: "Айдар Рахматуллин",
            userName: "user",
            password: "pass",
            info: "Привет! Меня зовут Айдар, мне 32 и живу в Мск. Работаю QA, изучаю Swift и разработку мобильный приложений под iOS")
    }
}
