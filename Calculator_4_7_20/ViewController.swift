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
    
    lazy var num0: CustomButton = {
        let button = CustomButton(type: .system)
        return button
    }()
    
    lazy var num1: CustomButton = {
        let button = CustomButton(type: .system)
        return button
    }()
    
    lazy var num2: CustomButton = {
        let button = CustomButton(type: .system)
        return button
    }()
    
    lazy var num3: CustomButton = {
        let button = CustomButton(type: .system)
        return button
    }()
    
    lazy var num4: CustomButton = {
        let button = CustomButton(type: .system)
        return button
    }()
    
    lazy var num5: CustomButton = {
        let button = CustomButton(type: .system)
        return button
    }()
    
    lazy var num6: CustomButton = {
        let button = CustomButton(type: .system)
        return button
    }()
    
    lazy var num7: CustomButton = {
        let button = CustomButton(type: .system)
        return button
    }()
    lazy var num8: CustomButton = {
        let button = CustomButton(type: .system)
        return button
    }()
    lazy var num9: CustomButton = {
        let button = CustomButton(type: .system)
        return button
    }()
    
    func setupButtons(){
        add.setupBtnConstraints(btns: add, view: view)
        sub.setupBtnConstraints(btns: sub, view: view)
        mult.setupBtnConstraints(btns: mult, view: view)
        div.setupBtnConstraints(btns: div, view: view)
        num0.setupBtnConstraints(btns: num0, view: view)
        num1.setupBtnConstraints(btns: num1, view: view)
        num2.setupBtnConstraints(btns: num2, view: view)
        num3.setupBtnConstraints(btns: num3, view: view)
        num4.setupBtnConstraints(btns: num4, view: view)
        num5.setupBtnConstraints(btns: num5, view: view)
        num6.setupBtnConstraints(btns: num6, view: view)
        num7.setupBtnConstraints(btns: num7, view: view)
        num8.setupBtnConstraints(btns: num8, view: view)
        num9.setupBtnConstraints(btns: num9, view: view)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
       setupButtons()
    }
    // Do any additional setup after loading the view.
}


