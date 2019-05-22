//
//  Reducer.swift
//  CleanRepository
//
//  Created by Ufos on 21/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import ReSwift



func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(
        userState: userReducer(action: action, state: state?.userState),
        authState: authReducer(action: action, state: state?.authState)
    )
}
