//
//  ProfileViewController.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    
    // if nil - we are not logged in
    var userId: Int = 0
    
    //
    
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var likesStepper: UIStepper!
    
    //
    
    lazy var presenter: IProfilePresenter = {
        return ProfilePresenter(
            view: self,
            userId: userId,
            userActions: UserActions(
                usersService: UsersService(),
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
    
    @IBAction func likesChanged(_ sender: UIStepper) {
        presenter.likeValueChanged(change: Int(sender.value))
        sender.value = 0
    }
    
}

//

extension ProfileViewController: IProfileView {
 
    func setUserName(name: String) {
        self.userLabel.text = name
    }
    
    func enableProfileView(show: Bool) {
        self.userImageView.isHidden = !show
    }
    
    func enableStepper(enabled: Bool) {
        self.likesStepper.isHidden = !enabled
    }
    
}
