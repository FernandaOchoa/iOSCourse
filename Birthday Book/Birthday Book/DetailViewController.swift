//
//  DetailViewController.swift
//  Birthday Book
//
//  Created by Fernanda Ochoa on 1/22/17.
//  Copyright © 2017 Fernanda Ochoa. All rights reserved.
//

import UIKit
import CoreData

class DetailViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    
    var choosenFriend = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundImage()
        
        addGestureImage()
        
        if choosenFriend != "" {
            assignText()
           
        }

    }
    func assignText(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Friends")
        fetchRequest.predicate = NSPredicate(format: "name = %@", self.choosenFriend)
        
        fetchRequest.returnsObjectsAsFaults = false
        
        do {
            
            let results = try context.fetch(fetchRequest)
            
            if results.count > 0 {
                
                for result in results as! [NSManagedObject] {
                    
                    
                    if let name = result.value(forKey: "name") as? String {
                        nameText.text = name
                    }
                    
                    if let birthday = result.value(forKey: "birthday") as? String {
                        birthdayText.text = birthday
                    }
                    
                    if let age = result.value(forKey: "age") as? Int {
                        ageText.text = String(age)
                    }
                    
                    if let imageData = result.value(forKey: "image") as? Data {
                        
                        let image = UIImage (data: imageData)
                        self.imageView.image = image
                    }
                }
                
            }
        } catch {
            
            print("An error has been ocurred while try retrieving data")
        }
        
    }
    
    
    func roundImage() {
        imageView.layoutIfNeeded()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = imageView.frame.size.width / 2
    }
    func addGestureImage(){
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DetailViewController.selectImage))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    func selectImage(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imageView.image = info[UIImagePickerControllerEditedImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonClicked(_ sender: Any) {
    
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let NewFriend = NSEntityDescription.insertNewObject(forEntityName: "Friends", into: context)
        
        NewFriend.setValue(nameText.text, forKey: "name")
        NewFriend.setValue(Int(ageText.text!)!, forKey: "age")
        NewFriend.setValue(birthdayText.text, forKey: "birthday")
        
        let data = UIImageJPEGRepresentation(imageView.image!, 0.5)
        NewFriend.setValue(data, forKey: "image")
        
        do {
            try context.save()
            print ("We managed to save the friend")
            
        } catch {
            print ("An error has been ocurred")
        }
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "Friend Created"), object: nil)
    
        _ = self.navigationController?.popViewController(animated: true)
        
    }
    

}
