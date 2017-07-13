//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Vartan on 7/12/17.
//  Copyright © 2017 Vartan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelZero: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // -- Variables --
    
    var newSigns = true
    
    // Function to add a number to the label aka input.
    func AddNumberToInput(number: String) {
        
        // showing up into our label zero.
        var textNumber = String(labelZero.text!)
        
        if newSigns {
            
            textNumber = ""
            newSigns = false
            
        }
        textNumber = textNumber! + number
        labelZero.text = textNumber!
        
    }
    
    // MARK: -- The actions for our number pad buttons ---
    
    @IBAction func zero(_ sender: Any) {
        AddNumberToInput(number: "0")
        
        
    }
    
    @IBAction func dotOperator(_ sender: Any) {
        AddNumberToInput(number: ".")
    }
    
    
    @IBAction func one(_ sender: Any) {
        AddNumberToInput(number: "1")
    }
    
    
    @IBAction func two(_ sender: Any) {
         AddNumberToInput(number: "2")
    }
    
    
    @IBAction func three(_ sender: Any) {
        AddNumberToInput(number: "3")
    }
    
    
    @IBAction func four(_ sender: Any) {
        
        AddNumberToInput(number: "4")
    }
    
    
    @IBAction func five(_ sender: Any) {
        
        AddNumberToInput(number: "5")
    }
    
    
    @IBAction func six(_ sender: Any) {
        
        AddNumberToInput(number: "6")
        
    }
    
    
    @IBAction func seven(_ sender: Any) {
        
        AddNumberToInput(number: "7")
        
    }
    
    
    @IBAction func eight(_ sender: Any) {
        
        AddNumberToInput(number: "8")
        
        
    }
    
    @IBAction func nine(_ sender: Any) {
        
        AddNumberToInput(number: "9")
        
    }
    
    // --- MARK: Our operators. ---
    var Aoperator = "+"
    var num1: Double?
    // -- MARK: Multiply ---
    
    @IBAction func multiplyOp(_ sender: Any) {
        
        Aoperator = "*"
        num1 = Double(labelZero.text!)
        newSigns = true
        
        
    }
    
    
    // -- MARK: Divide ---
    
    @IBAction func divideOp(_ sender: Any) {
        
        Aoperator = "/"
        num1 = Double(labelZero.text!)
        newSigns = true
        
        
        
    }
    
    
    // --- MARK: Subtract ---
    
    @IBAction func subtractOp(_ sender: Any) {
        
        Aoperator = "-"
        num1 = Double(labelZero.text!)
        newSigns = true
        
        
    }
    
    
    // --- MARK: Add ---
    
    @IBAction func addOp(_ sender: Any) {
        
        Aoperator = "+"
        num1 = Double(labelZero.text!)
        newSigns = true
        
        
    }
    
    
    // --- MARK: The Clear Button ---
    
    @IBAction func clearOp(_ sender: Any) {
        
        Aoperator = "0"
        num1 = Double(labelZero.text!)
        newSigns = true
        
        
    }
    
    
    
    // --- MARK: +/- Operator ----
    
    @IBAction func PlusOrMinusOp(_ sender: Any) {
        
        var textNum = String(labelZero.text!)
        textNum = "-" + textNum!
        labelZero.text = textNum
        
        
    }
    
    
    
    // -- MARK: Percentage ---
    
    @IBAction func percentOp(_ sender: Any) {
        
        var num1 = Double(labelZero.text!)
        num1 = num1! / 100.0
        labelZero.text = String(num1!)
        newSigns = true
        
        
        
    }
    
    
    // -- MARK: Equals ---
    
    @IBAction func equalOp(_ sender: Any) {
        
        let num2 = Double(labelZero.text!)
        var equalNum: Double?
        
        // Switch statement for our operators.
        switch Aoperator {
        case "*":
            equalNum = num1! * num2!
        case "/":
            equalNum = num1! / num2!
        case  "-":
            equalNum = num1! - num2!
        case "+":
            equalNum = num1! + num2!
        default:
            equalNum = 0.0
        }
        labelZero.text = String(equalNum!)
        newSigns = true 
        
        
        
    }
    
    
    

   


}

