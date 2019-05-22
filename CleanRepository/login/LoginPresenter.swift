//
//  LoginPresenter.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import Foundation
import ReSwift


class LoginPresenter: ILoginPresenter, StoreSubscriber {

    private weak var view: ILoginView?
    private var router: IRouter
    private var authActions: IAuthActions

    //
    
    init(
        view: ILoginView?,
        router: IRouter,
        authActions: IAuthActions
    ) {
        self.view = view
        self.router = router
        self.authActions = authActions
    }
    
    //
    // Lifecycle
    //
    
    func viewDidLoad() {
        //
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
    
    func loginClicked() {
        view?.showLoading()
        authActions.login(username: "Username", password: "Pass")
    }
    
    func skipClicked() {
        router.navigate(to: .Main(user: nil))
    }
    
    
    //
    // StoreSubscriber
    //
    
    func newState(state: AppState) {
        view?.hideLoading()
        
        if let loggedUser = state.authState.loggedUser {
            router.navigate(to: .Main(user: loggedUser))
        }
    }
    
}



//


protocol ILoginPresenter {
    
    // Lifecycle
    func viewDidLoad()
    func viewWillAppear()
    func viewWillDisappear()
    
    
    //
    func loginClicked()
    func skipClicked()

    
}

//

protocol ILoginView: class {

    func showLoading()
    func hideLoading()
    
}
