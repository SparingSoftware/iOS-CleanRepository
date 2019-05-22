//
//  UserReducers.swift
//  CleanRepository
//
//  Created by Ufos on 22/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import ReSwift

func userReducer(action: Action, state: UserState?) -> UserState {
    // if no state has been provided, create the default state
    var state = state ?? UserState()
    
    switch(action) {
        
    case let action_ as UserActions.LikesChanged:
        if let index = state.users.firstIndex(where: { $0.id == action_.userId }) {
            state.users[index].likes += action_.change
        }
        break
        
    case let action_ as UserActions.Fetched:
        state.users = action_.users
    break
        
    default:
        break
    }
    
    return state
}
