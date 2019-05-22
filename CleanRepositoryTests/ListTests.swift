//
//  ListTests.swift
//  CleanRepositoryTests
//
//  Created by Ufos on 22/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

@testable import CleanRepository
import XCTest
import Cuckoo


class ListTests: XCTestCase {

    let view = MockIProfileListView()
        .withEnabledDefaultImplementation(IProfileListViewStub())
    let router = MockIRouter()
        .withEnabledDefaultImplementation(IRouterStub())
    let events = MockIEventObserver()
        .withEnabledDefaultImplementation(IEventObserverStub())
    let userActions = MockIUserActions()
        .withEnabledDefaultImplementation(IUserActionsStub())
    
    var presenter: ProfileListPresenter!
    
    override func setUp() {
        presenter = ProfileListPresenter(
            view: view,
            router: router,
            eventObserver: events,
            userActions: userActions
        )
    }

    //
    
    func testFetchAllUsers() {
        presenter.viewDidLoad()
        
        verify(userActions).fetchAllUsers()
    }
    
    func testAllUsersFetched() {
        presenter.viewDidLoad()
        
        let state = AppState(userState: UserState(users: [User(id: 33, name: "Jan", likes: 12)], loggedUser: nil))
        
        presenter.newState(state: state)
        
        verify(view).updateList()
        XCTAssert(presenter.numberOfProfiles() == 1)
        // todo: implement Equatable
        XCTAssert(presenter.profileAt(pos: 0).id == state.userState.users[0].id)
        XCTAssert(presenter.profileAt(pos: 0).name == state.userState.users[0].name)
        XCTAssert(presenter.profileAt(pos: 0).likes == state.userState.users[0].likes)
    }

}
