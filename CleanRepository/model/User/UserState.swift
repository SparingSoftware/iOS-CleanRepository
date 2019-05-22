//
//  UserState.swift
//  CleanRepository
//
//  Created by Ufos on 21/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import ReSwift

struct User {
    var id: Int
    var name: String
    var likes: Int
}


struct UserState {
    // "cached" data
    var users: [User] = [
        User(id: 11, name: "Piotr", likes: 11)
    ]
    
}
