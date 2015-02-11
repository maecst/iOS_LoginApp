//
//  ViewController.swift
//  LoginApp
//
//  Created by Mae Yee on 2015-02-10.
//  Copyright (c) 2015 MaeCST. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        usernameField.delegate = self
        passwordField.delegate = self
    }
    
    func textFieldShouldReturn(textField: UITextField) ->Bool {
        let nextTag = textField.tag + 1 as Int
        var nextField: UIResponder? = textField.superview?.viewWithTag(nextTag)
        
        if let field: UIResponder = nextField {
            field.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        
        return false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

