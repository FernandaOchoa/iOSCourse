//
//  ViewController.swift
//  Gallery
//
//  Created by Fernanda Ochoa on 1/19/17.
//  Copyright © 2017 Fernanda Ochoa. All rights reserved.

//Paso 1 al 5 creacion
//1 a 5 llenado de arreglos
//A eliminar elementos
//IVC 1 a N ImageViewController

import UIKit

  //Paso 2 heredamos
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //1
    var campeonesArray = [String()]
    
    //IVC1
    var campeonesImageArray = [UIImage()]

    var champchoosen = ""
    var imagechoosen = UIImage()
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Paso 1
        tableView.dataSource = self
        tableView.delegate = self
        
        //2
        campeonesArray.append("Ashe")
        campeonesArray.append("Trundle")
        campeonesArray.append("Teemo")
        campeonesArray.append("Jinx")
        
        //IVC 2 Traer las imagenes a xcode y agregar un segundo viewcontroller, agregar instancias y poner su image y text
        campeonesImageArray.append(UIImage(named: "ashe.png")!)
        campeonesImageArray.append(UIImage(named: "trundle.jpg")!)
        campeonesImageArray.append(UIImage(named: "teemo.jpg")!)
        campeonesImageArray.append(UIImage(named: "jinx.jpg")!)
        
        
        
        
    }
    //Paso 3 Funciones
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Paso 5 celdas
        let cell = UITableViewCell()
        //Paso 5 cell.textLabel?.text = "Soy un renglon"
        //5
        cell.textLabel?.text = campeonesArray[indexPath.row]
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Paso 4 tamano
        
        //Paso 4  return 10
        
        //3
        return campeonesArray.count
    }
    
    //A borrar datos
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            campeonesArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.champchoosen = campeonesArray[indexPath.row]
        self.imagechoosen = campeonesImageArray[indexPath.row]
        
        performSegue(withIdentifier: "DetailViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailViewController" {
            
            let destinationVC = segue.destination as! DetailViewController
            
            destinationVC.selectedChamp = self.champchoosen
            destinationVC.selectedImage = self.imagechoosen
            
        }
    }
    

}

