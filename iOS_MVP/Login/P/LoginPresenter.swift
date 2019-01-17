//
//  LoginPresenter.swift
//  MVP
//
//  Created by Insect on 2019/1/17.
//  Copyright © 2019 Insect. All rights reserved.
//

import Foundation

class LoginPresenter {
    
    var model: LoginModelProtocol?
    weak var view: LoginViewProtocol?
    
    init(view: LoginViewProtocol?) {
        
        attachView(view)
        model = LoginModel(present: self)
    }
}

// MARK: - Presenterable
extension LoginPresenter: Presenterable {
    
    typealias View = LoginViewProtocol?
    
    func attachView(_ view: LoginViewProtocol?) {
        self.view = view
    }
    
    func detachView() {
        view = nil
    }
}

// MARK: - LoginPresenterProtocol
extension LoginPresenter: LoginPresenterProtocol {
    
    func login(account: String, pwd: String) {
        model?.login(account: account, pwd: pwd)
    }
    
    func loading() {
        view?.showLoading()
    }
    
    func loginSuccess(_ response: User) {
        view?.loginSuccess(response)
    }
    
    func loginFailure(_ error: String) {
        view?.loginFailure(error)
    }
    
    func showToast(_ text: String) {
        view?.showToast(text)
    }
}
