//
//  LoginViewProtocol.swift
//  MVP
//
//  Created by Insect on 2019/1/17.
//  Copyright © 2019 Insect. All rights reserved.
//

import Foundation

protocol LoginViewProtocol: class {
    
    func account() -> String
    func password() -> String
    func showLoading()
    func showToast(_ text: String)
    func loginSuccess(_ response: User)
    func loginFailure(_ error: String)
}
