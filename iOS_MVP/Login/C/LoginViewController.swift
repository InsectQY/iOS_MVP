//
//  LoginViewController.swift
//  MVP2
//
//  Created by Insect on 2019/1/17.
//  Copyright © 2019 Insect. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    private var present: LoginPresenter?
    
    // MARK: - IBOutlet
    @IBOutlet private weak var accountTF: UITextField!
    @IBOutlet private weak var pwdTF: UITextField!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        present = LoginPresenter(view: self)
    }
    
    deinit {
        
        present?.detachView()
        print("销毁----------")
    }
    
    // MARK: - 点击登录
    @IBAction func loginBtnDidClick() {
        present?.login(account: accountTF.text ?? "", pwd: pwdTF.text ?? "")
    }
}

// MARK: - LoginViewProtocol
extension LoginViewController: LoginViewProtocol {
    
    func showLoading() {
        Toast.loading()
    }
    
    func showToast(_ text: String) {
        Toast.show(info: text)
    }
    
    func loginSuccess(_ response: User) {
        
        Toast.show(info: """
        \(response.name)
            
        登录成功
        """)
        dismiss(animated: true, completion: nil)
    }
    
    func loginFailure(_ error: String) {
        Toast.show(info: error)
    }
}
