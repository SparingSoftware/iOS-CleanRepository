//
//  State.swift
//  CleanRepository
//
//  Created by Ufos on 21/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import ReSwift


struct AppState: StateType {
    
    var userState: UserState = UserState()
    var authState: AuthState = AuthState()
    
}
