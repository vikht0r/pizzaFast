//
//  MasaPizza.swift
//  pizzaFast
//
//  Created by Victor Glez Guillen on 14/10/15.
//  Copyright © 2015 Victor Glez Guillen. All rights reserved.
//


import UIKit

class MasaPizza: UIViewController {
    var masaElegida:String?
    var defaultMasa = NSUserDefaults.standardUserDefaults()
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let masa = masaElegida
        let sigVista =  segue.destinationViewController as! ViewController
        sigVista.masaFinal = masa!
    }
    @IBOutlet weak var masaEtiqueta: UILabel!
    
    @IBAction func masaDelgada(sender: AnyObject) {
        masaEtiqueta.text = "Delgada"
        masaElegida = masaEtiqueta.text
        defaultMasa.setObject(masaElegida, forKey: "masaGuardada")
    }
    @IBAction func masaCrujiente(sender: AnyObject) {
        masaEtiqueta.text = "Crujiente"
        masaElegida = masaEtiqueta.text
        defaultMasa.setObject(masaElegida, forKey: "masaGuardada")
    }
    @IBAction func masaGruesa(sender: AnyObject) {
        masaEtiqueta.text = "Gruesa"
        masaElegida = masaEtiqueta.text
        defaultMasa.setObject(masaElegida, forKey: "masaGuardada")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Recuperar cadena guardada por medio de NSUserDefault
        masaElegida = defaultMasa.stringForKey("masaGuardada")
        
        if masaElegida != nil{
            
            masaEtiqueta.text = "\(masaElegida!)"
        }
        else {
            masaEtiqueta.text = ""
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}