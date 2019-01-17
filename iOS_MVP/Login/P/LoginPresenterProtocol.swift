//
//  LoginPresenterProtocol.swift
//  MVP
//
//  Created by Insect on 2019/1/17.
//  Copyright © 2019 Insect. All rights reserved.
//

import Foundation

protocol LoginPresenterProtocol: class {
    
    /// 显示提示
    func showToast(_ text: String)
    /// 登录
    func login()
    /// 登录请求中
    func loading()
    /// 登录成功
    func loginSuccess(_ response: User)
    /// 登录失败
    func loginFailure(_ error: String)
}
