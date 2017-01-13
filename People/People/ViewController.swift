//
//  ViewController.swift
//  People
//
//  Created by Fernanda Ochoa on 1/12/17.
//  Copyright © 2017 Fernanda Ochoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonChange: UIButton!
    @IBOutlet weak var labelSaludar: UILabel!
    @IBOutlet weak var labelNombre: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func changeLabels(){
        
        let newUser = People()
        newUser.name = "Fernanda Ochoa"
        newUser.favoriteBand = "Me gusta Imagine Dragons"
        
        labelNombre.text = newUser.name
        labelSaludar.text = newUser.favoriteBand
        
        labelNombre.textColor = UIColor.orange
        labelSaludar.textColor = UIColor.orange
    }
    
    @IBAction func ButtonChanged(_ sender: Any) {
        changeLabels()
        
    }

}

