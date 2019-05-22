//
//  LoginActions.swift
//  CleanRepository
//
//  Created by Ufos on 22/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import ReSwift



//

protocol IAuthActions {
    
    func login(username: String, password: String)
    
}


//

class AuthActions: IAuthActions {
    
    
    //
    // Data Changing
    //
    
    struct LoggedIn: Action {
        var user: User?
    }
    
    
    //
    //
    //
    
    private var authService: IAuthService
    private var store: IDispatchStore
    
    init(
        authService: IAuthService,
        store: IDispatchStore
        ) {
        self.authService = authService
        self.store = store
    }
    
    //
    // Actions
    //
    
    func login(username: String, password: String) {
        authService.login(username: username, password: password) { [weak self] (user, error) in
            self?.store.dispatch(AuthActions.LoggedIn(user: user))
        }
    }

}
