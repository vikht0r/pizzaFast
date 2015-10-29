//
//  IngredPizza.swift
//  pizzaFast
//
//  Created by Victor Glez Guillen on 14/10/15.
//  Copyright © 2015 Victor Glez Guillen. All rights reserved.
//

import UIKit
var flag:Array = [false, false, false, false, false, false, false, false, false]

class IngredPizza: UIViewController {
    var cont = 0
    var cont2 = 0
    var cont3 = 0
    var indice:Int?
    
    @IBOutlet var coleccionDeBotones: Array<UIButton>?
    
    @IBAction func ingredienteUno(sender: AnyObject) {
        //FUNCION QUE AGREGA NUEVOS ELEMENTOS AL ARREGLO
            func NuevosElementos()
            {
                cont2 = 0
                repeat
                {
                    //print("\(cont2) y \(flag[cont2])")
                    if sender.tag == cont2 && flag[cont2] == false
                    {
                    ingredientesElegidos!.append(ingredientes[sender.tag])
                    flag[cont2] = true
                    coleccionDeBotones![sender.tag].backgroundColor = UIColor.greenColor()
                    print("\(ingredientesElegidos![cont]) se ha agregado en el indice \(cont)")
                    cont++
                    }
                    cont2++
                } while (cont2 <= 8)
            }
        
        if ingredientesElegidos!.count > 0
        {
            //Next Line:fatal error: unexpectedly found nil while unwrapping an Optional value
            // safely unwrapping
            // SI EL INGREDIENTE YA EXISTE, LO ELIMINA DEL ARREGLO Y REALIZA EL RECORRIDO DE ELEMENTOS DEJANDO EL ULTIMO ESPACIO DISPONIBLE
            if  let index = ingredientesElegidos!.indexOf(ingredientes[sender.tag])
            {
            coleccionDeBotones![sender.tag].backgroundColor = UIColor.whiteColor()
            flag[sender.tag] = false
            cont--
            indice  = ingredientesElegidos!.indexOf(ingredientes[sender.tag])!
            cont3 = ingredientesElegidos!.count - 1
            cont2 = index
                
                for (indice, valor) in ingredientesElegidos!.enumerate() {
                    
                    print("Elemento \(indice + 1): \(valor)")
                    
                }
                print("\(index): ubicacion del elemento repetido \(cont3) : espacios llenos")
                ingredientesElegidos![index] = ingredientesElegidos![cont3]
                ingredientesElegidos!.removeLast()
               
                for (indice, valor) in ingredientesElegidos!.enumerate() {
                    
                    print("Elemento \(indice + 1): \(valor)")
                    
                }

            }
            else
            {
                if cont < 5
                {
                print("no existe en el array")
                NuevosElementos()
                }
                else
                {
                 print("array completo", ingredientesElegidos!.count)
                }
            }
        }
            else
           {
                if cont < 5
                {
                NuevosElementos()
                }
                else
                {
                 print("array completo", ingredientesElegidos!.count)
                }
            }
                }
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        }
}