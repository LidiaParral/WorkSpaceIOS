//
//  ViewController.swift
//  Calculadora
//
//  Created by Alumno on 28/02/2021.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var primero  = ""
    var segundo  = ""
    var funcion = ""
    var resultado = 0.0
    var userInput = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
    @IBOutlet weak var calculatorDisplay: UILabel!
    
    @IBAction func clearButton(_ sender: Any) {
        primero = ""
        segundo = ""
        funcion = ""
        userInput = ""
        resultado = 0.0
        calculatorDisplay.text = "0"
    }
    
    
    //Operaciones
    @IBAction func divideButton(_ sender: Any) {
        funcion = "/"
        primero = userInput
        userInput = ""
        
    }
    
    @IBAction func mulButton(_ sender: Any) {
        funcion = "*"
        primero = userInput
        userInput = ""
    }
    
    
    
    @IBAction func sumaButton(_ sender: Any) {
        funcion = "+"
        primero = userInput
        userInput = ""
    
    }
    
    
    @IBAction func restaButton(_ sender: Any) {
        funcion = "-"
        primero = userInput
        userInput = ""
        
    }
    
    @IBAction func igualButton(_ sender: Any) {
        segundo = userInput
        var primerInput = 0.0
        var segundoInput = 0.0
        primerInput = Double(primero)!
        segundoInput = Double(segundo)!
        if(funcion == "+"){
            resultado = primerInput + segundoInput
            calculatorDisplay.text = String(resultado)
            
        } else if(funcion == "-"){
            resultado = primerInput - segundoInput
            calculatorDisplay.text = String(resultado)
            
        } else if(funcion == "*"){
            resultado = primerInput * segundoInput
            calculatorDisplay.text = String(resultado)
            
        } else
        {
            resultado = primerInput / segundoInput
            calculatorDisplay.text = String(resultado)
            
        }
        
    }

    @IBAction func puntoButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "."
        calculatorDisplay.text! += userInput
        
        
    }
    
    //Numeros
    
    @IBAction func ceroButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "0"
        calculatorDisplay.text! += userInput
    
    }
    
    
    @IBAction func unoButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "1"
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func dosButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "2"
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func tresButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "3"
        calculatorDisplay.text! += userInput
    
    }
    
    @IBAction func cuatroButton(_ sender: Any) {
        
        calculatorDisplay.text = ""
        userInput += "4"
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func cincoButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "5"
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func seisButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "6"
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func sieteButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "7"
        calculatorDisplay.text! += userInput
        
    }
    
    @IBAction func ochoButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "8"
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func nueveButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "9"
        calculatorDisplay.text! += userInput
    }
    
    
}

