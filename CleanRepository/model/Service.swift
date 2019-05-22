//
//  IService.swift
//  CleanRepository
//
//  Created by Ufos on 20/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation


protocol IService {
    
    func request(request: IRequest, completion: @escaping (_ response: Any?, _ error: Any?)->())
    
}
