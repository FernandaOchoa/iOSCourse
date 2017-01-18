//
//  ViewController.swift
//  Alert View
//
//  Created by Fernanda Ochoa on 1/17/17.
//  Copyright © 2017 Fernanda Ochoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var confirmPasswordText: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func signUpButtonClicked(_ sender: Any) {
        
        if nameText.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please provide a username ", preferredStyle: UIAlertControllerStyle.alert)
            let okButton = UIAlertAction (title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
        } else if passwordText.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please provide a password ", preferredStyle: UIAlertControllerStyle.alert)
            let okButton = UIAlertAction (title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
        } else if passwordText.text != confirmPasswordText.text {
            let alert = UIAlertController(title: "Error", message: "The passwords do not match ", preferredStyle: UIAlertControllerStyle.alert)
            let okButton = UIAlertAction (title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Successfull", message: "\(nameText.text!) is created", preferredStyle: UIAlertControllerStyle.alert)
            let okButton = UIAlertAction (title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
}

