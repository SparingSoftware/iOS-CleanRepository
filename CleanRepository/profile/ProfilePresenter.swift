//
//  ProfilePresenter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import RxSwift
import ReSwift


class ProfilePresenter: IProfilePresenter, StoreSubscriber {

    private weak var view: IProfileView?
    private var userId: Int
    private var userActions: IUserActions
    
    private var disposable: DisposeBag = DisposeBag()
    
    private let NO_USER_ID = 0
    
    //
    
    init(
        view: IProfileView?,
        userId: Int,
        userActions: IUserActions
    ) {
        self.view = view
        self.userId = userId
        self.userActions = userActions
    }
    
    //
    // Lifecycle
    //

    func viewDidLoad() {
        if userId == NO_USER_ID {
            view?.setUserName(name: "You are not logged in!")
            view?.enableProfileView(show: false)
            view?.enableStepper(enabled: false)
        } else {
            view?.setUserName(name: "Fetching details...")
            view?.enableProfileView(show: false)
            view?.enableStepper(enabled: true)
        }
        
        bindObservers()
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
    
    func likeValueChanged(change: Int) {
        userActions.changeLike(userId: userId, change: change)
    }
    
    //
    // StoreSubscriber
    //
    
    func newState(state: AppState) {
        if let user = state.userState.users.first(where: { $0.id == self.userId }) {
            self.setupUser(user: user)
        }
    }
    
    //
    // Private
    //
    
    private func bindObservers() {
        //
    }
    
    private func setupUser(user: User?) {
        if let user_ = user {
            view?.setUserName(name: "\(user_.name) : \(user_.likes)")
            view?.enableProfileView(show: true)
            view?.enableStepper(enabled: true)
        } else {
            // erorr
        }
    }

}

//


protocol IProfilePresenter {
    
    // Lifecycle
    func viewDidLoad()
    func viewWillAppear()
    func viewWillDisappear()
    
    // Actions
    func likeValueChanged(change: Int)
    
}

//

protocol IProfileView: class {

    func setUserName(name: String)
    func enableProfileView(show: Bool)
    func enableStepper(enabled: Bool)
    
}
