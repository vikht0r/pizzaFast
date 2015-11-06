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





//var defaultIngred:Array = NSUserDefaults.standardUserDefaults()

class ViewController: UIViewController {

    var tamanoFinal : String = ""
    var masaFinal : String = ""
    var quesoFinal : String = ""
    var ingredientesFinales : [String]? = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
            
        
    }
    
    override func viewWillAppear(animated: Bool) {
      //
        print("Pizza de tamaño: \(tamanoFinal)")
        print("Con masa tipo: \(masaFinal)")
        print("Con queso de tipo: \(quesoFinal)")
        var indice = 0
        while indice < ingredientesFinales!.count{
        print("Ingrediente: \(ingredientesFinales![indice])")
            indice++
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

