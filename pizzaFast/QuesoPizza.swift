//
//  QuesoPizza.swift
//  pizzaFast
//
//  Created by Victor Glez Guillen on 14/10/15.
//  Copyright © 2015 Victor Glez Guillen. All rights reserved.
//

import UIKit

class QuesoPizza: UIViewController {
    
    @IBOutlet weak var quesoEtiqueta: UILabel!
    @IBAction func quesoMozarela(sender: AnyObject) {
        quesoEtiqueta.text = "Mozarela"
        quesoElegido = quesoEtiqueta.text
        defaultQueso.setObject(quesoElegido, forKey: "quesoGuardado")
    
    }
    @IBAction func quesoCheddar(sender: AnyObject) {
        quesoEtiqueta.text = "Cheddar"
        quesoElegido = quesoEtiqueta.text
        defaultQueso.setObject(quesoElegido, forKey: "quesoGuardado")
    }
    @IBAction func quesoParmesano(sender: AnyObject) {
        quesoEtiqueta.text = "Parmesano"
        quesoElegido = quesoEtiqueta.text
        defaultQueso.setObject(quesoElegido, forKey: "quesoGuardado")
    }
    @IBAction func sinQueso(sender: AnyObject) {
        quesoEtiqueta.text = "Sin queso"
        quesoElegido = quesoEtiqueta.text
        defaultQueso.setObject(quesoElegido, forKey: "quesoGuardado")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        quesoElegido = defaultQueso.stringForKey("quesoGuardado")
        
        if quesoElegido != nil{
            
            quesoEtiqueta.text = "\(quesoElegido!)"
        }
        else {
            quesoEtiqueta.text = ""
        }    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}