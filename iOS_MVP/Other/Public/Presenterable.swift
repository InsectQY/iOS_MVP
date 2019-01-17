//
//  Presenter.swift
//  MVP2
//
//  Created by Insect on 2019/1/17.
//  Copyright © 2019 Insect. All rights reserved.
//

import UIKit

protocol Presenterable {
    
    associatedtype View
    
    func attachView(_ view: View)
    func detachView()
}
