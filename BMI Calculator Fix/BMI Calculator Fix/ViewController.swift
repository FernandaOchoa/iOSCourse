//
//  ViewController.swift
//  BMI Calculator Fix
//
//  Created by Fernanda Ochoa on 1/16/17.
//  Copyright © 2017 Fernanda Ochoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textHeight: UITextField!
    @IBOutlet weak var textWeight: UITextField!
    @IBOutlet weak var labelBMI: UILabel!
    @IBOutlet weak var labelComments: UILabel!
    @IBOutlet weak var calcButton: UIButton!
    
    var userWeight = 0.0
    var userHeight = 0.0
    var userHeightSquare = 0.0
    var finalBMI = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func calculateButton(_ sender: Any) {

        if let newWeight = Double (textWeight.text!){
            userWeight = newWeight * 0.45
        }
        
        if let newHeight = Double (textHeight.text!){
            userHeight = newHeight * 0.025
        }
        
        userHeightSquare = userHeight * userHeight
        
        finalBMI = userWeight / userHeightSquare
        
        labelBMI.text = "BMI Result : \(finalBMI.rounded())"
        
        if finalBMI < 19 {
            
            labelComments.text = "You need to gain some weight"
        
        } else if finalBMI > 19 && finalBMI < 25 {
        
            labelComments.text = "You are healthy, congrats"
        
        } else {
        
            labelComments.text = "You need to loose some weight"
        }
        
    }//\\
}

