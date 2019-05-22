//
//  ProfileListPresenter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import RxSwift
import ReSwift



class ProfileListPresenter: IProfileListPresenter, StoreSubscriber {
    
    private weak var view: IProfileListView?
    
    private var router: IRouter?
    private var eventObserver: IEventObserver
    private var userActions: IUserActions

    
    private var profiles: [User] = []
    
    private var disposable: DisposeBag = DisposeBag()
    
    //
    
    init(
        view: IProfileListView?,
        router: IRouter,
        eventObserver: IEventObserver,
        userActions: IUserActions
    ) {
        self.view = view
        self.router = router
        self.eventObserver = eventObserver
        self.userActions = userActions
    }
    
    //
    // Lifecycle
    //
    
    func viewDidLoad() {
        view?.setupViews()
        
        userActions.fetchAllUsers()
    }
    
    func viewWillAppear() {
        mainStore.subscribe(self)
    }
    
    func viewWillDisappear() {
        mainStore.unsubscribe(self)
    }

    
    //
    // Actions
    //
    
    func profileClickedAt(pos: Int) {
        router?.navigate(to: .Profile(user: profileAt(pos: pos)))
    }

    func myProfileClicked() {
        // more convenient than to use callback's
        eventObserver.publish(type: .ShowMyProfileEvent, extraData: nil)
    }
    
    //
    // Data
    //
    
    
    func numberOfProfiles() -> Int {
        return profiles.count
    }
    
    func profileAt(pos: Int) -> User {
        return profiles[pos]
    }
    
    //
    // StoreSubscriber
    //

    func newState(state: AppState) {
        self.profiles = state.userState.users
        view?.updateList()
    }
    
    //
    // Private
    //
    
    
}



//


protocol IProfileListPresenter {
    
    // Lifecycle
    func viewDidLoad()
    func viewWillAppear()
    func viewWillDisappear()
    
    //
    func numberOfProfiles() -> Int
    func profileAt(pos: Int) -> User
    
    func profileClickedAt(pos: Int)
    func myProfileClicked()
    
    
}

//

protocol IProfileListView: class {

    func setupViews()
    
    func updateList()
    
}
