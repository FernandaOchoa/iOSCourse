//
//  ViewController.swift
//  Segue
//
//  Created by Fernanda Ochoa on 1/17/17.
//  Copyright © 2017 Fernanda Ochoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userAge = 0

    @IBOutlet weak var ageText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "goToFirst"{
            let destinationView = segue.destination as! secondViewController
            destinationView.inputAge = userAge
        }
    }

    @IBAction func goToSecond(_ sender: Any) {
        
        if let givenAge = Int(ageText.text!){
            userAge = givenAge
        }
        
        performSegue(withIdentifier: "goToFirst", sender: nil)
        
    }
}
