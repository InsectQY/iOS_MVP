//
//  ViewController.swift
//  iOS_MVP
//
//  Created by Insect on 2019/1/17.
//  Copyright © 2019 Insect. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func loginBtnDidClick() {
        present(LoginViewController(), animated: true, completion: nil)
    }
}

