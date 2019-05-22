//
//  ListChangeEvent.swift
//  CleanRepository
//
//  Created by Ufos on 20/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import UIKit

class ListChangeEvent<T> {
    
    typealias ChangeType = (elem: T, index: IndexPath)
    
    var inserted: [ChangeType] = []
    var deleted: [ChangeType] = []
    var updated: [ChangeType] = []
    
}
