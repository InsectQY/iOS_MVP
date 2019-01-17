//
//  LoginModelProtocol.swift
//  MVP
//
//  Created by Insect on 2019/1/17.
//  Copyright © 2019 Insect. All rights reserved.
//

import Foundation

protocol LoginModelProtocol: class {
    
    /// 登录逻辑处理
    func login(account: String, pwd: String)
}
