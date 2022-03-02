//
//  Defaults.swift
//  lesson6.4task
//
//  Created by Javlonbek on 31/01/22.
//

import Foundation

class Defaults: ObservableObject {
    @Published var user: User? {
        didSet {
            storeUser(user: user!)
        }
    }
    
    init() {
        self.user = loadUser()
    }
    
    func storeUser(user: User) {
        let encoder = JSONEncoder()
        if let encodedUser = try? encoder.encode(user) {
            UserDefaults.standard.set(encodedUser, forKey: "user")
        }
    }
    
    func loadUser() -> User! {
        if let savedUserData = UserDefaults.standard.object(forKey: "user") as? Data {
            let decoder = JSONDecoder()
            if let savedUser = try? decoder.decode(User.self, from: savedUserData) {
                return savedUser
            }
        }
        return nil
    }
}
