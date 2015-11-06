//
//  ViewController.swift
//  pizzaFast
//
//  Created by Victor Glez Guillen on 12/10/15.
//  Copyright © 2015 Victor Glez Guillen. All rights reserved.
//

import UIKit


/*var tamano:Array = ["Pequeño", "Mediano", "Grande"]
var masa:Array = ["Delgada", "Crujiente", "Gruesa"]
var queso:Array = ["Mozarela", "Cheddar", "Parmesano", "Sin queso"]*/
let ingredientes:Array = ["jamon", "pepperoni", "pavo", "salchicha", "aceituna", "cebolla", "pimiento", "piña", "anchoa"
]
var tamanoElegido:String?
var masaElegida:String?
var quesoElegido:String?
var ingredientesElegidos: [String]? = []// ["", "", "", "", ""]

var defaultTamano = NSUserDefaults.standardUserDefaults()
var defaultMasa = NSUserDefaults.standardUserDefaults()
var defaultQueso = NSUserDefaults.standardUserDefaults()
//var defaultIngred:Array = NSUserDefaults.standardUserDefaults()

class ViewController: UIViewController {

   
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      ingredientesElegidos?.reserveCapacity(5)
      print(ingredientesElegidos?.count)
      print(ingredientesElegidos?.capacity)
            
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

