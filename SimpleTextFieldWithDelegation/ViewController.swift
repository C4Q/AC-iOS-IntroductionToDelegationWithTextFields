//
//  ViewController.swift
//  SimpleTextFieldWithDelegation
//
//  Created by C4Q  on 10/25/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var inputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Text field returned")
        textField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("lowerBound: \(range.lowerBound), upperBound: \(range.upperBound), str: \(string)")
        if string == "a" {
            return false
        }
        return true
    }
}

