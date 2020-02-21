//
//  ExtensionUILabel.swift
//  ProyectJitsi
//
//  Created by DEV-IOS on 20/02/2020.
//  Copyright © 2020 DEV-IOS. All rights reserved.
//

import UIKit

extension UILabel {
    func roundBlueThink(){
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.systemBlue.cgColor
    }
}

extension UIView {
    func roundBlue(){
           self.layer.cornerRadius = 5
           self.layer.borderWidth = 2
           self.layer.borderColor = UIColor.systemBlue.cgColor
       }
}

extension UIViewController {
    func c() {
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}
