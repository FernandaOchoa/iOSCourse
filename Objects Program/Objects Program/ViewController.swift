//
//  ViewController.swift
//  Objects Program
//
//  Created by Fernanda Ochoa on 1/16/17.
//  Copyright © 2017 Fernanda Ochoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        let myLabel = UILabel()
        myLabel.text = "He creado un label"
        myLabel.textAlignment = .center
        
        //myLabel.textAlignment = NSTextAlignment.center
        
        myLabel.frame = CGRect(x: width * 0.1, y: height * 0.5, width: width * 0.8, height: 50)
        view.addSubview(myLabel)
        
        //Add a Button 
        let myButton = UIButton()
        myButton.frame = CGRect(x: width * 0.33, y: height * 0.3 + 50, width: width * 0.34, height: 50.0)
        myButton.setTitle("My Button", for: UIControlState.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        myButton.titleLabel?.textAlignment = .center
        myButton.addTarget(self, action: #selector(ViewController.myFunction), for: UIControlEvents.touchUpInside)
        
        view.addSubview(myButton)
    }
    
    func myFunction() {
        print("Button Pressed")
    }

}

