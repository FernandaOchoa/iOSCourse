//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Fernanda Ochoa on 1/14/17.
//  Copyright © 2017 Fernanda Ochoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var heightText: UITextField!
    @IBOutlet weak var calculate: UIButton!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    var userWeight = 0.00
    var userHeight = 0.00
    var userHeightSquare = 0.00
    var finalBMI = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateButtonClicked(_ sender: Any) {
        
        userWeight = Double (weightText.text!)! * 0.45
        userHeight = Double (heightText.text!)! * 0.025
        
        userHeightSquare = userHeight * userHeight
        
        finalBMI = userWeight / userHeightSquare
        
        resultsLabel.text = "BMI Result: \(finalBMI)"
        
        if finalBMI < 19 {
            commentLabel.text = "You need to gain some weight!"
        }else if finalBMI > 19 && finalBMI < 25 {
            commentLabel.text = "You are healthy, congratulations!"
        }else {
            commentLabel.text = "You need to loose some weight!"
        }
    }

}

