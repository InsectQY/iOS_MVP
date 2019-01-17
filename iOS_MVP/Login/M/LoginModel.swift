//
//  LoginModel.swift
//  MVP
//
//  Created by Insect on 2019/1/17.
//  Copyright © 2019 Insect. All rights reserved.
//

import Foundation

class LoginModel {
    
    weak var present: LoginPresenter?
    
    init(present: LoginPresenter?) {
        self.present = present
    }
}

// MARK: - LoginModelProtocol
extension LoginModel: LoginModelProtocol {
    
    func login(account: String?, pwd: String?) {
        
        guard let account = account, let pwd = pwd else {
            
            present?.showToast("账号密码不合法") 
            return
        }
        if account.count == 0 || pwd.count == 0 {
            
            present?.showToast("账号密码不合法")
            return
        }
        
        present?.loading()
        Net.login(account: account, pwd: pwd, success: { [weak self] in
            self?.present?.loginSuccess($0)
        }) { [weak self] in
            self?.present?.loginFailure($0)
        }
    }
}
