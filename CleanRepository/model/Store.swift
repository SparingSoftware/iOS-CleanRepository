//
//  Store.swift
//  CleanRepository
//
//  Created by Ufos on 22/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import ReSwift


//
// Our wrapper for easy mocking and tests
//

protocol IDispatchStore {

    func dispatch(_ action: Action)
    
}

//

class DispatchStore: IDispatchStore {

    private var store: Store<AppState>
    
    init(store: Store<AppState>) {
        self.store = store
    }

    func dispatch(_ action: Action) {
        store.dispatch(action)
    }

    
}
