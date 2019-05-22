//
//  UserActions.swift
//  CleanRepository
//
//  Created by Ufos on 21/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import ReSwift



//

protocol IUserActions {
    
    func changeLike(userId: Int, change: Int)
    func fetchAllUsers()
    
}


//

class UserActions: IUserActions {
    
    
    //
    // Data Changing
    //
    
    struct LikesChanged: Action {
        var userId: Int
        var change: Int
    }
    
    struct Fetched: Action {
        var users: [User]
    }
    
    
    //
    //
    //
    
    private var usersService: IUsersService
    private var store: IDispatchStore
    
    init(
        usersService: IUsersService,
        store: IDispatchStore
    ) {
        self.usersService = usersService
        self.store = store
    }
    
    //
    // Actions
    //
    
    func changeLike(userId: Int, change: Int) {
        store.dispatch(UserActions.LikesChanged(userId: userId, change: change))
    }
    
    func fetchAllUsers() {
        usersService.fetchAllUsers { [weak self] (users, error) in
            self?.store.dispatch(Fetched(users: users))
        }
    }
    
    
    
}
