//
//  BaseObject.swift
//  LeaveMemo
//
//  Created by Chan Meng Hoe on 11/06/2018.
//  Copyright © 2018 Chan Meng Hoe. All rights reserved.
//

import UIKit

class BaseObject: NSObject {

}

// MARK : dismiss editing
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
//        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
