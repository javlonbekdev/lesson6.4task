//
//  Key.swift
//  lesson6.4task
//
//  Created by Javlonbek on 31/01/22.
//

import Foundation
import SwiftKeychainWrapper

class Key: ObservableObject {
    @Published var password: String {
        didSet{
            KeychainWrapper.standard.set(password, forKey: "key")
        }
    }
    init() {
        self.password = KeychainWrapper.standard.string(forKey: "key") ?? "no data yet"
    }
}
