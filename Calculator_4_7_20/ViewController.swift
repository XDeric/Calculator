//
//  ViewController.swift
//  Calculator_4_7_20
//
//  Created by EricM on 4/7/20.
//  Copyright © 2020 EricM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var txtView: UITextField = {
        let txt = UITextField()
        
        txt.isEnabled = false
        return txt
    }()
    
    lazy var add: CustomButton = {
        let button = CustomButton()
        button.setupButton(title: "+")
        button.buttonFunction = {print("test")}
        return button
    }()
    
    lazy var sub: CustomButton = {
        let button = CustomButton()
        button.setupButton(title: "+")
        button.buttonFunction = {print("test")}
        return button
    }()
    
    lazy var mult: CustomButton = {
        let button = CustomButton()
        button.setupButton(title: "+")
        button.buttonFunction = {print("test")}
        return button
    }()
    
    lazy var div: CustomButton = {
        let button = CustomButton()
        button.setupButton(title: "+")
        button.buttonFunction = {print("test")}
        return button
    }()
    
    lazy var num0: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    
    lazy var num1: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    
    lazy var num2: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    
    lazy var num3: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    
    lazy var num4: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    
    lazy var num5: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    
    lazy var num6: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    
    lazy var num7: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    lazy var num8: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    lazy var num9: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        add.setupBtnConstraints(btns: add, view: view)
    }
    // Do any additional setup after loading the view.
}


