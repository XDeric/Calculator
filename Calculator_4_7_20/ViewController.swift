//
//  ViewController.swift
//  Calculator_4_7_20
//
//  Created by EricM on 4/7/20.
//  Copyright © 2020 EricM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var searchString = "" {
        didSet{
        }
    }
    
    lazy var txtView: UITextField = {
        let txt = UITextField()
        txt.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        txt.delegate = self
        txt.font = UIFont.boldSystemFont(ofSize: 50)
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
        button.setupButton(title: "-")
        button.buttonFunction = {print("test")}
        return button
    }()
    
    lazy var mult: CustomButton = {
        let button = CustomButton()
        button.setupButton(title: "*")
        button.buttonFunction = {print("test")}
        return button
    }()
    
    lazy var div: CustomButton = {
        let button = CustomButton()
        button.setupButton(title: "/")
        button.buttonFunction = {print("test")}
        return button
    }()
    
    lazy var equal: CustomButton = {
        let button = CustomButton(type: .system)
        button.setupButton(title: "=")
        button.buttonFunction = {print("test")}
        return button
    }()
    
    lazy var clear: CustomButton = {
        let button = CustomButton(type: .system)
        button.setupButton(title: "AC")
        button.buttonFunction = {print("test")}
        return button
    }()
    
    lazy var num0: CustomButton = {
        let button = CustomButton(type: .system)
        button.setupButton(title: "0")
        return button
    }()
    
    lazy var num1: CustomButton = {
        let button = CustomButton(type: .system)
        button.setupButton(title: "1")
        return button
    }()
    
    lazy var num2: CustomButton = {
        let button = CustomButton(type: .system)
        button.setupButton(title: "2")
        return button
    }()
    
    lazy var num3: CustomButton = {
        let button = CustomButton(type: .system)
        button.setupButton(title: "3")
        return button
    }()
    
    lazy var num4: CustomButton = {
        let button = CustomButton(type: .system)
        button.setupButton(title: "4")
        return button
    }()
    
    lazy var num5: CustomButton = {
        let button = CustomButton(type: .system)
        button.setupButton(title: "5")
        return button
    }()
    
    lazy var num6: CustomButton = {
        let button = CustomButton(type: .system)
        button.setupButton(title: "6")
        return button
    }()
    
    lazy var num7: CustomButton = {
        let button = CustomButton(type: .system)
        button.setupButton(title: "7")
        return button
    }()
    lazy var num8: CustomButton = {
        let button = CustomButton(type: .system)
        button.setupButton(title: "8")
        return button
    }()
    lazy var num9: CustomButton = {
        let button = CustomButton(type: .system)
        button.setupButton(title: "9")
        return button
    }()
    
    private func setupTextfield(){
        txtView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(txtView)
        
        NSLayoutConstraint.activate([
            txtView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            txtView.leftAnchor.constraint(equalTo: view.leftAnchor),
            txtView.rightAnchor.constraint(equalTo: view.rightAnchor),
            txtView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2)
        ])
    }
    
    private func setupStackView() {
        let stackView = UIStackView(arrangedSubviews: [clear,div])
        let stackView1 = UIStackView(arrangedSubviews: [num7,num8,num9,mult])
        let stackView2 = UIStackView(arrangedSubviews: [num4,num5,num6,sub])
        let stackView3 = UIStackView(arrangedSubviews: [num1,num2,num3,add])
        let stackView4 = UIStackView(arrangedSubviews: [num0,equal])
        let items = [stackView,stackView1,stackView2,stackView3,stackView4]
        items.forEach({$0.axis = .horizontal})
        items.forEach({$0.distribution = .fillEqually})
        items.forEach({$0.translatesAutoresizingMaskIntoConstraints = false})
        items.forEach{view.addSubview($0)}
        
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: txtView.bottomAnchor),
            //            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.16),
            
            stackView1.topAnchor.constraint(equalTo: stackView.bottomAnchor),
            //            stackView1.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stackView1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            stackView1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.16),
            
            stackView2.topAnchor.constraint(equalTo: stackView1.bottomAnchor),
            //            stackView2.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stackView2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            stackView2.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.16),
            
            stackView3.topAnchor.constraint(equalTo: stackView2.bottomAnchor),
            //            stackView3.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stackView3.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            stackView3.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.16),
            
            stackView4.topAnchor.constraint(equalTo: stackView3.bottomAnchor),
            //            stackView3.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stackView4.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            stackView4.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.16),
            
        ])
    }
    
    
    //MARK: Life cycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        //        loadReciepeData(search: searchString)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupTextfield()
        setupStackView()
    }
    // Do any additional setup after loading the view.
}

//MARK: UItextfield extension
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchString = textField.text ?? ""
        return true
    }
}

