//
//  CustomButton.swift
//  Calculator_4_7_20
//
//  Created by EricM on 4/7/20.
//  Copyright © 2020 EricM. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton(title: String){
        setTitle(title, for: .normal)
        setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        backgroundColor = #colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1)
        //        titleLabel?.font = UIFont.boldSystemFont(ofSize: fntSize)
        layer.cornerRadius = 5
        addTarget(self, action: #selector(btnFunc), for: .touchUpInside)
        isEnabled = true
        
    }
    
    var buttonFunction: (()->())?
    
    @objc private func btnFunc() {
        if let closure = buttonFunction {
            closure()
        }
    }
    
    func setupBtnConstraints(btns: [UIButton] ){
        let items = btns
        items.forEach {$0.translatesAutoresizingMaskIntoConstraints = false}
        items.forEach{self.addSubview($0)}
        
        NSLayoutConstraint.activate([
            
            centerXAnchor.constraint(equalTo: self.centerXAnchor),
            topAnchor.constraint(equalTo: self.topAnchor,constant: 5),
            heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.75),
            widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8)
        ])
    }
    
}
