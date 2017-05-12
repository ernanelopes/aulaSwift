//
//  ViewController.swift
//  Calculadora
//
//  Created by HC5MAC06 on 11/05/17.
//  Copyright © 2017 IESB - Instituto de Educaçao Superior de Brasilia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var userIsInMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        
        let digit = sender.currentTitle!
        let currentValue = display!.text!
        
        if userIsInMiddleOfTyping{
            display.text = currentValue + digit
        }else{
            display.text = digit
            userIsInMiddleOfTyping = true
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        
        userIsInMiddleOfTyping = false
        
        if let mathematicalOperation = sender.currentTitle{
            switch mathematicalOperation{
                case "π":
                    display.text = String(Double.pi)
            default:
                break
            }
        }
        
    }
}

