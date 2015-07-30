		//
//  ViewController.swift
//  myCalculator
//
//  Created by Aaron Salsitz on 7/27/15.
//  Copyright © 2015 Aaron Salsitz. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

	@IBOutlet weak var display: UILabel!
	
	var userIsInTheMiddleOfTypingANumber = false
	
	@IBAction func appendDigit(sender: UIButton) {
		let digit = sender.currentTitle!
		if userIsInTheMiddleOfTypingANumber {
			display.text = display.text! + digit
		} else {
			display.text = digit
			userIsInTheMiddleOfTypingANumber = true
		}
	}
    
    var opperandStack = Array<Double> ()
    
	@IBAction func enter() {
		userIsInTheMiddleOfTypingANumber = false
        opperandStack.append(displayValue)
		print("opperandstack = \(opperandStack)")
	}
    
    var displayValue: Double {
        get {
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set {
            display.text = "\(newValue)"
            userIsInTheMiddleOfTypingANumber = false
        }
    }
    
    @IBAction func opperate(sender: UIButton) {
        let opperation = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            enter()
        }
        switch opperation {
//            case "+":
//            case "−":
            case "×":
//            case "÷":
//            case "√":
            default: break
        }
        
    }
    
}
