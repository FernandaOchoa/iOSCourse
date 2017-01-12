//
//  ViewController.swift
//  test
//
//  Created by Fernanda Ochoa on 1/11/17.
//  Copyright © 2017 Fernanda Ochoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelWelcome: UILabel!
    
    @IBOutlet weak var labelFirst: UILabel!

    
    @IBOutlet weak var okButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func okButtonClicked(_ sender: Any) {
        labelWelcome .text = "I've changed"
        labelFirst .text = "I did it"
        
        labelWelcome .textColor = UIColor.orange
        labelFirst .textColor = UIColor.blue
        
    }

}

