//
//  ViewController.swift
//  TimerApp
//
//  Created by Fernanda Ochoa on 1/17/17.
//  Copyright © 2017 Fernanda Ochoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 5
        timerLabel.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunction), userInfo: nil, repeats: true)
    }
    
    func timerFunction(){
        timerLabel.text = String(counter)
        
        counter = counter - 1
        
        if counter == 0 {
            timer.invalidate()
            timerLabel.text = "Your time is over!"
        }
    }
}


