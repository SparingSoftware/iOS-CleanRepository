//
//  LoginViewController.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var skipButton: UIButton!
    
    
    //
    
    private lazy var presenter: ILoginPresenter =  { [weak self] in
        return LoginPresenter(
            view: self,
            router: LoginRouter(viewController: self),
            authActions: AuthActions(
                authService: AuthService(),
                store: DispatchStore(store: mainStore)
            )
        )
    }()
    
    //
    // Lifecycle
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        presenter.viewWillAppear()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        presenter.viewWillDisappear()
    }
    
    //
    // Actions
    //
    
    @IBAction func logInClicked(_ sender: Any) {
        presenter.loginClicked()
    }
    
    @IBAction func skipClicked(_ sender: Any) {
        presenter.skipClicked()
    }
    
    //
    // Navigation
    //
    
    // back to this screen
    @IBAction func unwindToLogin(segue: UIStoryboardSegue) { }

}

// ILoginView
extension LoginViewController: ILoginView {
    
    func showLoading() {
        loginButton.isEnabled = false
        skipButton.isEnabled = false
    }
    
    func hideLoading() {
        loginButton.isEnabled = true
        skipButton.isEnabled = true
    }
    
}
