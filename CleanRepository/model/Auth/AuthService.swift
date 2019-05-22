//
//  LoginService.swift
//  CleanRepository
//
//  Created by Ufos on 22/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation


protocol IAuthService {
    
    func login(username: String, password: String, completion: @escaping (_ response: User, _ error: Any?)->())
    
}

//

class LoginRequest: IRequest {
    
    init(username: String, password: String) {
        //
    }
    
    var url: String = "/login"
    
}

//

class AuthService: IAuthService, IService {
    
    func login(username: String, password: String, completion: @escaping (User, Any?) -> ()) {
        request(request: LoginRequest(username: username, password: password)) { (response, error) in
            completion(User(id: 11, name: "Piotr", likes: 12), nil)
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
