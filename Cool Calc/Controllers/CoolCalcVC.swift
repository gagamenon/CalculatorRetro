//
//  ViewController.swift
//  Cool Calc
//
//  Created by Gabriel Parra on 17/05/20.
//  Copyright © 2020 Gabitron. All rights reserved.
//

import UIKit
var valueTotal: Double = 0
var value1 = 0.0, value2 = 0.0
var lastSign = "Clean"
var typingValue = true
func checkAndCalculate(_ valueTyped: Double, tappedOperation: String ) -> Double{
    if lastSign == "Clean"{
        value1 = valueTyped
        lastSign = tappedOperation
        valueTotal = value1
    }else {
        value2 = valueTyped
        switch lastSign {
        case "add": valueTotal = value1 + value2
        case "substract": valueTotal = value1 - value2
        case "muliply": valueTotal = value1 * value2
        case "divide": valueTotal = value1 / value2
        default: print(valueTotal)
        }
    }    
    typingValue = false
    return valueTotal
    
   }


class CoolCalcVC: UIViewController {
    func addNumber(_ number: String) {
        if typingValue{
        if displayLbl.text == "0.0"{
                   displayLbl.text = number
               }else{
                   displayLbl.text! += number
               }
        }else{
             typingValue = true
            displayLbl.text = ""
            displayLbl.text! += number
        }
    }
    func delNumber() {
        if displayLbl.text!.count > 1{
            if displayLbl.text != "0.0"{displayLbl.text?.removeLast()}
        }else{displayLbl.text = "0.0"}
    }
    
   
    @IBOutlet weak var displayLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLbl.text = "0.0"
    }
    
    @IBAction func num9(_ sender: Any) {addNumber("9")}
    @IBAction func num8(_ sender: Any) {addNumber("8")}
    @IBAction func sum7(_ sender: Any) {addNumber("7")}
    @IBAction func num6(_ sender: Any) {addNumber("6")}
    @IBAction func num5(_ sender: Any) {addNumber("5")}
    @IBAction func num4(_ sender: Any) {addNumber("4")}
    @IBAction func num3(_ sender: Any) {addNumber("3")}
    @IBAction func num2(_ sender: Any) {addNumber("2")}
    @IBAction func num1(_ sender: Any) {addNumber("1")}
    @IBAction func num0(_ sender: Any) {addNumber("0")}
    @IBAction func num00(_ sender: Any) {addNumber("00")}
    @IBAction func numPeriod(_ sender: Any) {addNumber(".")}
    
    
    @IBAction func allClearBtn(_ sender: Any) {
        displayLbl.text = "0.0"
        valueTotal = 0
        typingValue = true
        lastSign = "Clean"
    }
    @IBAction func clearBtn(_ sender: Any) {displayLbl.text = "0"}
    @IBAction func deleteBtn(_ sender: Any) {delNumber()}
   
    @IBAction func sumBtn(_ sender: Any) {
        let typedValue = Double(displayLbl.text!)!
        displayLbl.text = "\(checkAndCalculate(typedValue, tappedOperation: "add"))"
        print("+")
    }
    
    @IBAction func resBtn(_ sender: Any) {
        let typedValue = Double(displayLbl.text!)!
        displayLbl.text = "\(checkAndCalculate(typedValue, tappedOperation: "substract"))"
        print("-")
    }
    
    @IBAction func divBtn(_ sender: Any) {
        let typedValue = Double(displayLbl.text!)!
        displayLbl.text = "\(checkAndCalculate(typedValue, tappedOperation: "divide"))"
        print("/")
    }
    
    @IBAction func multiBtn(_ sender: Any) {
        let typedValue = Double(displayLbl.text!)!
        displayLbl.text = "\(checkAndCalculate(typedValue, tappedOperation: "muliply"))"
        print("*")
    }
    
    @IBAction func resultBtn(_ sender: Any) {
        let typedValue = Double(displayLbl.text!)!
        displayLbl.text = "\(checkAndCalculate(typedValue, tappedOperation: "result"))"
        lastSign = "Clean"
        valueTotal = 0
    }
    
}
