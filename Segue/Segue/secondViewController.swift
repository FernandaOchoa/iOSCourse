//
//  secondViewController.swift
//  Segue
//
//  Created by Fernanda Ochoa on 1/17/17.
//  Copyright © 2017 Fernanda Ochoa. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var ageLabel: UILabel!
    
    var inputAge = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ageLabel.text = "Your Age Is: \(inputAge)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
