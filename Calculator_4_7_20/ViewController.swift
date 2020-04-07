//
//  ViewController.swift
//  Calculator_4_7_20
//
//  Created by EricM on 4/7/20.
//  Copyright © 2020 EricM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var add: CustomButton = {
        let button = CustomButton()
        button.setupButton(title: "+")
//        button.buttonFunction {
//            $0 * 2
//        }
        return button
    }()
    
    lazy var num1: UIButton = {
        let button = UIButton(type: .system)
        
        return button
    }()
    
    @objc func operators (){}
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // Do any additional setup after loading the view.
}


