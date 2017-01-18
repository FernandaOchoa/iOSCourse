//
//  ViewController.swift
//  WorkingImages
//
//  Created by Fernanda Ochoa on 1/17/17.
//  Copyright © 2017 Fernanda Ochoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var TeamLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var switchImage: UISwitch!
    
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        number = 0
        
        gestureImage()
    }
    
    @IBAction func changeClicked(_ sender: Any) {
        if number == 0 {
            changeLyon()
        } else {
           changeJTHVS()
        }
        
    }
    
    @IBAction func changeSwitched(_ sender: Any) {
        
        if number == 0 {
            changeLyon()
        } else {
            changeJTHVS()
        }
    }
    
    func changeLyon(){
        ImageView.image = UIImage(named: "lyon.png")
        number = number + 1
        TeamLabel.text = "Lyon Gaming"
        TeamLabel.textColor = UIColor.orange
    }
    func changeJTHVS(){
        ImageView.image = UIImage(named: "jthvs.jpg")
        number = number - 1
        TeamLabel.text = "Just Toys Havoks"
        TeamLabel.textColor = UIColor.blue
    }
    
    func changeAll(){
        if number == 0 {
            changeLyon()
        } else {
            changeJTHVS()
        }
    }
    
    func gestureImage(){
        ImageView.isUserInteractionEnabled = true
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.changeAll))
        ImageView.addGestureRecognizer(gesture)
    }
}


