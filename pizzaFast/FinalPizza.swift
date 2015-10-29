//
//  FinalPizza.swift
//  pizzaFast
//
//  Created by Victor Glez Guillen on 14/10/15.
//  Copyright © 2015 Victor Glez Guillen. All rights reserved.
//

import UIKit

class FinalPizza: UIViewController {
    
    @IBOutlet weak var tamanofinal: UILabel!
    @IBAction func confirmarTerminar(sender: AnyObject) {
        
        //Remover a nivel de KEY
        defaultTamano.removeObjectForKey("tamañoGuardado")
        defaultMasa.removeObjectForKey("masaGuardada")
        defaultQueso.removeObjectForKey("quesoGuardado")
        //defaultIngred.removeObjectForKey("algoquetodavianoresuelvo")
        
        // mandar un aviso donde se indica al usuario que su pedido esta en cocina.
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tamanofinal.text = tamanoElegido
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}