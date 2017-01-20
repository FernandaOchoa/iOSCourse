//
//  DetailViewController.swift
//  Gallery
//
//  Created by Fernanda Ochoa on 1/19/17.
//  Copyright © 2017 Fernanda Ochoa. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var labelDescription: UILabel!
    
    var selectedChamp = ""
    var selectedImage = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = selectedImage
        labelDescription.text = selectedChamp

    }
}
