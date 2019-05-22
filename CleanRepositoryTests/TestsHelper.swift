//
//  TestHelper.swift
//  CleanRepositoryTests
//
//  Created by Ufos on 22/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

@testable import CleanRepository
import XCTest
import Cuckoo
import ReSwift


//
// Param matchers
//

func equalActions(to value: Action) -> ParameterMatcher<Action> {
    return ParameterMatcher { tested in
        switch (value) {
        case let changeAction as UserActions.LikesChanged:
            if let testedAction = tested as? UserActions.LikesChanged {
                return changeAction.userId == testedAction.userId &&
                    changeAction.change == testedAction.change
            }
            
        case let fetchedAction as UserActions.Fetched:
            if let testedAction = tested as? UserActions.Fetched {
                // Todo: implement Equatable
                return fetchedAction.users.count == testedAction.users.count
            }
            
        default:
            return false
        }
        
        return false
    }
}

