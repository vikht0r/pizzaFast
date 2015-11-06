//
//  tamanoPizza.swift
//  pizzaFast
//
//  Created by Victor Glez Guillen on 14/10/15.
//  Copyright © 2015 Victor Glez Guillen. All rights reserved.
//

import UIKit

class tamanoPizza: UIViewController {
    
    var valorTextField:String?
    var tamanoElegido:String?
    var defaultTamano = NSUserDefaults.standardUserDefaults()
    @IBOutlet weak var tamanoEtiqueta: UILabel!

    
    @IBAction func tamanoChico(sender: AnyObject) {
       
        tamanoEtiqueta.text = "Chico"
        tamanoElegido = tamanoEtiqueta.text
        defaultTamano.setObject(tamanoElegido, forKey: "tamañoGuardado")
        
        /*
        NSUserDefaults.standardUserDefaults().setObject(myArray, forKey: "\(identity.text!)listA")
        
        NSUserDefaults.standardUserDefaults().synchronize()
        */
    }
    
    @IBAction func tamanoMediano(sender: AnyObject) {
        tamanoEtiqueta.text = "Mediano"
        tamanoElegido = tamanoEtiqueta.text
        defaultTamano.setObject(tamanoElegido, forKey: "tamañoGuardado")
    }
    
    @IBAction func tamanoGrande(sender: AnyObject) {
        tamanoEtiqueta.text = "Grande"
        tamanoElegido = tamanoEtiqueta.text
        defaultTamano.setObject(tamanoElegido, forKey: "tamañoGuardado")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Recuperar cadena guardada por medio de NSUserDefault
        tamanoElegido = defaultTamano.stringForKey("tamañoGuardado")
        
        if tamanoElegido != nil{
            
            tamanoEtiqueta.text = "\(tamanoElegido!)"
        }
        else {
            tamanoEtiqueta.text = ""
        }
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let tamano = tamanoElegido!
        let sigVista =  segue.destinationViewController as! ViewController
        sigVista.tamanoFinal = tamano
        print("\(tamanoElegido)")
        
    }

    
}

