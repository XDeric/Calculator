//
//  AlertExtension.swift
//  Calculator_4_7_20
//
//  Created by EricM on 4/12/20.
//  Copyright © 2020 EricM. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func showAlert(withTitle title: String, andMessage message: String) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alertVC, animated: true, completion: nil)
    }
}
