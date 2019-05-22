//
//  LoginReducers.swift
//  CleanRepository
//
//  Created by Ufos on 22/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import ReSwift

func authReducer(action: Action, state: AuthState?) -> AuthState {
    // if no state has been provided, create the default state
    var state = state ?? AuthState()
    
    switch(action) {
    case let action_ as AuthActions.LoggedIn:
        state.loggedUser = action_.user
    break
        
    default:
        break
    }
    
    return state
}
