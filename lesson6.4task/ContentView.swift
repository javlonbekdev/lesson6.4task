//
//  ContentView.swift
//  lesson6.4task
//
//  Created by Javlonbek on 31/01/22.
//

import SwiftUI
import SwiftKeychainWrapper

struct ContentView: View {
    
    @ObservedObject var defaults = Defaults()
    @ObservedObject var key = Key()
    init() {
        print(key.password as Any)
        key.password = "All data is here"
        print(key.password as Any)
        
//        print(defaults.loadUser() as Any)
//        let user = User(firstName: "Javlonbek", lastName: "ibn Alisher", email: "javlonbek@gmail.com", phone: 911415121)
//        defaults.storeUser(user: user)
//        print(defaults.loadUser() as Any)
    }
    var body: some View {
        Text("\(defaults.loadUser()!.lastName)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
