//
//  ViewController.swift
//  PoroGame
//
//  Created by Fernanda Ochoa on 1/18/17.
//  Copyright © 2017 Fernanda Ochoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    
    @IBOutlet weak var poro1: UIImageView!
    @IBOutlet weak var poro2: UIImageView!
    @IBOutlet weak var poro3: UIImageView!
    @IBOutlet weak var poro4: UIImageView!
    @IBOutlet weak var poro5: UIImageView!
    @IBOutlet weak var poro6: UIImageView!
    @IBOutlet weak var poro7: UIImageView!
    @IBOutlet weak var poro8: UIImageView!
    @IBOutlet weak var poro9: UIImageView!
    @IBOutlet weak var highscoreLabel: UILabel!
    
    var score = 0
    var counter = 30
    
    var timer = Timer()
    var hideTimer = Timer ()
    
    var imageArray = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let highScore = UserDefaults.standard.object(forKey: "highscore")
        
        if highScore == nil {
            highscoreLabel.text = "0"
        }
        
        if let highestScore = highScore as? Int {
            highscoreLabel.text = String(highestScore)
        }
        
        
        pointLabel.text = "Score: \(score)"
        
        //adding gesture recognizers to images
        loadViewsRecognizer()
        
        //Timer
        timerPoro()
        
        //ImagesArray Creation
        imageArray.append(poro1)
        imageArray.append(poro2)
        imageArray.append(poro3)
        imageArray.append(poro4)
        imageArray.append(poro5)
        imageArray.append(poro6)
        imageArray.append(poro7)
        imageArray.append(poro8)
        imageArray.append(poro9)
        
        hideImages()
    }

    func increaseScore(){
        //Increase Score
        score = score + 1
        pointLabel.text = "Score: \(score)"
        
    }
    
    func countDown(){
        
        counter = counter - 1
        scoreLabel.text = String(counter)
        
        if counter == 0{
            
            timer.invalidate()
            hideTimer.invalidate()
            
            //Saving highscores
            if self.score > Int(highscoreLabel.text!)!{
            
                UserDefaults.standard.set(self.score, forKey: "highscore")
                highscoreLabel.text = String(self.score)
            }
            alerts()
        }
    }
    
    func hideImages(){
        for poro in imageArray {
            poro.isHidden = true
        }
        
        let randomNumber = Int(arc4random_uniform(UInt32(imageArray.count - 1)))
        imageArray[randomNumber].isHidden = false
    }
    
    func alerts(){
            
            let alert = UIAlertController(title: "Time's UP", message: "Your time is OVER", preferredStyle: UIAlertControllerStyle.alert)
            
            let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(ok)
            
            let replay = UIAlertAction(title: "Replay", style: UIAlertActionStyle.default, handler: { (UIAlertAction) in
                
                self.score = 0
                self.pointLabel.text  = "Score: \(self.score)"
                self.counter = 30
                
                self.scoreLabel.text = String (self.counter)
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
                
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.hideImages), userInfo: nil, repeats: true)
            })
            
            alert.addAction(replay)
            self.present(alert, animated: true, completion: nil)
        
    }
    func loadViewsRecognizer() {
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        
        poro1.addGestureRecognizer(recognizer1)
        poro2.addGestureRecognizer(recognizer2)
        poro3.addGestureRecognizer(recognizer3)
        poro4.addGestureRecognizer(recognizer4)
        poro5.addGestureRecognizer(recognizer5)
        poro6.addGestureRecognizer(recognizer6)
        poro7.addGestureRecognizer(recognizer7)
        poro8.addGestureRecognizer(recognizer8)
        poro9.addGestureRecognizer(recognizer9)
        
        poro1.isUserInteractionEnabled = true
        poro2.isUserInteractionEnabled = true
        poro3.isUserInteractionEnabled = true
        poro4.isUserInteractionEnabled = true
        poro5.isUserInteractionEnabled = true
        poro6.isUserInteractionEnabled = true
        poro7.isUserInteractionEnabled = true
        poro8.isUserInteractionEnabled = true
        poro9.isUserInteractionEnabled = true
    }
    func timerPoro(){
        scoreLabel.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
        
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.hideImages), userInfo: nil, repeats: true)    }
}

