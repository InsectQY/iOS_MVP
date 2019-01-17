//
//  Net.swift
//  MVP2
//
//  Created by Insect on 2019/1/17.
//  Copyright © 2019 Insect. All rights reserved.
//

import Foundation

class Net {
    
    public static func login(account: String, pwd: String, success: ((User) -> ())?, failure: ((String) -> ())?) {

        // 模拟网络延迟
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute:
            {
            
            // 模拟网络请求失败
            let random = Int.random(in: 0...1)
                
            if random == 0 {
                
                let user = User(name: "你好世界", age: 100)
                success?(user)
            }else {
                failure?("密码错误")
            }
        })
    }
}
