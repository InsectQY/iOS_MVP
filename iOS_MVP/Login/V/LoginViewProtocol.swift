//
//  LoginViewProtocol.swift
//  MVP
//
//  Created by Insect on 2019/1/17.
//  Copyright © 2019 Insect. All rights reserved.
//

import Foundation

protocol LoginViewProtocol: class {
    
    /// 账号
    func account() -> String
    /// 密码
    func password() -> String
    /// 输入不合法
    func showToast(_ text: String)
    /// 请求正在进行中
    func showLoading()
    /// 网络请求返回, 登录成功
    func loginSuccess(_ response: User)
    /// 网络请求返回, 登录失败
    func loginFailure(_ error: String)
}
