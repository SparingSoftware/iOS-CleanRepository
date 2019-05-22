//
//  UsersService.swift
//  CleanRepository
//
//  Created by Ufos on 22/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation


protocol IUsersService {
    
    func fetchAllUsers(completion: @escaping (_ response: [User], _ error: Any?)->())
    
}

//

class AllUsersRequest: IRequest {
    
    var url: String = "/allUsers"

}

//

class UsersService: IUsersService, IService {
    
    func fetchAllUsers(completion: @escaping ([User], Any?) -> ()) {
        let users: [User] = [
            User(id: 11, name: "Piotr", likes: 11),
            User(id: 1, name: "Jan", likes: 2),
            User(id: 2, name: "Michal", likes: 44),
            User(id: 3, name: "Kuba", likes: 923)
        ]
        
        request(request: AllUsersRequest()) { (response, error) in
            completion(users, nil)
        }
    }
    
    //
    // IService
    //
    
    func request(request: IRequest, completion: @escaping (Any?, Any?) -> ()) {
        // To implement
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            completion(nil, nil)
        }
    }
    
}
