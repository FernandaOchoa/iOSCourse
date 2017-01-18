//
//  ViewController.swift
//  Store Data Locally
//
//  Created by Fernanda Ochoa on 1/17/17.
//  Copyright © 2017 Fernanda Ochoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var lastText: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedLast = UserDefaults.standard.object(forKey: "last")
        
        if let newName = storedName as? String {
            nameLabel.text = "Name: \(newName)"
        }
        if let newLast = storedLast as? String {
            lastLabel.text = "Last Name: \(newLast)"
        }
    }

    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameText.text, forKey: "name")
        UserDefaults.standard.set(lastText.text, forKey: "last")
        UserDefaults.standard.synchronize()
        
        nameLabel.text = "Name: \(nameText.text!)"
        lastLabel.text = "Last Name: \(lastText.text!)"
        
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedLast = UserDefaults.standard.object(forKey: "last")
        
        if let _ = storedName as? String {
            UserDefaults.standard.removeObject(forKey: "name")
            UserDefaults.standard.synchronize()
            
            nameLabel.text = "Name: "
            nameText.text = ""
        }
        if let _ = storedLast as? String {
            UserDefaults.standard.removeObject(forKey: "last")
            UserDefaults.standard.synchronize()
            
            lastLabel.text = "Last Name: "
            nameText.text = ""
        }
        
        
    }
   
    
}

