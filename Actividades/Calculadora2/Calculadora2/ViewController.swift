//
//  ViewController.swift
//  Calculadora2
//
//  Created by Alumno on 01/03/2021.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numero1: UITextField!
    
    @IBOutlet weak var numero2: UITextField!
    
    @IBOutlet weak var resultado: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func suma(_ sender: Any) {
        let num = Double(numero1.text!)
        let calculo = Double(numero2.text!)
        let suma = num! + calculo!;
        resultado.text = String(suma)
    }
    
    @IBAction func resta(_ sender: Any) {
        let num = Double(numero1.text!)
        let calculo = Double(numero2.text!)
        let suma = num! - calculo!;
        resultado.text = String(suma)
    }
    @IBAction func multiplicacion(_ sender: Any) {
        let num = Double(numero1.text!)
        let calculo = Double(numero2.text!)
        let suma = num! * calculo!;
        resultado.text = String(suma)
    }
    
    @IBAction func division(_ sender: Any) {
        let num = Double(numero1.text!)
        let calculo = Double(numero2.text!)
        let suma = num! / calculo!;
        resultado.text = String(suma)
    }
}

