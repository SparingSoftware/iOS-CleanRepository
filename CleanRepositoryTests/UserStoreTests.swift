//
//  UserStoreTests.swift
//  CleanRepositoryTests
//
//  Created by Ufos on 22/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

@testable import CleanRepository
import XCTest
import Cuckoo

//

class UserStoreTests: XCTestCase {

    let service = MockIUsersService()
        .withEnabledDefaultImplementation(IUsersServiceStub())
    let store = MockIDispatchStore()
        .withEnabledDefaultImplementation(IDispatchStoreStub())
    
    var userActions: IUserActions!
    
    override func setUp() {
        userActions = UserActions(usersService: service, store: store)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    ///
    
    func test_reducer_fetched() {
        let state = UserState(users: [
            User(id: 33, name: "Jan", likes: 12),
            User(id: 11, name: "Michal", likes: 7),
            User(id: 3, name: "Jan", likes: 33)
            ], loggedUser: nil)
        
        
        let newUsers = [
            User(id: 33, name: "Jan", likes: 8)
        ]
        
        let newState = userReducer(action: UserActions.Fetched(users: newUsers), state: state)
        
        XCTAssert(newState.users[0].likes == 8)
        XCTAssert(newState.users[0].id == 33)
        XCTAssert(newState.users.count == 1)
    }
    
    func test_reducer_likesChanged_wrong() {
        let state = UserState(users: [
            User(id: 33, name: "Jan", likes: 12),
            User(id: 11, name: "Michal", likes: 7),
            User(id: 3, name: "Jan", likes: 33)
            ], loggedUser: nil)
        
        let newState = userReducer(action: UserActions.LikesChanged(userId: 21124, change: 1), state: state)
        
        XCTAssert(newState.users[0].likes == 12)
    }
    
    func test_reducer_likesChanged_correct() {
        let state = UserState(users: [
                User(id: 33, name: "Jan", likes: 12),
                User(id: 11, name: "Michal", likes: 7),
                User(id: 3, name: "Jan", likes: 33)
            ], loggedUser: nil)
        
        let newState = userReducer(action: UserActions.LikesChanged(userId: 33, change: 1), state: state)
        
        XCTAssert(newState.users[0].likes == 13)
    }
    
    func test_changeLike() {
        userActions.changeLike(userId: 23, change: 11)
        
        verify(store).dispatch(equalActions(to: UserActions.LikesChanged(userId: 23, change: 11)))
    }
    
    func test_fetched() {
        let users: [User] = [ User(id: 12, name: "Jan", likes: 122) ]
        
        stub(service) { stub in
            when(stub.fetchAllUsers(completion: any())).then({ (completion) in
                completion(users, nil)
            })
        }

        userActions.fetchAllUsers()
        
        verify(store).dispatch(equalActions(to: UserActions.Fetched(users: users)))
    }
    

}
