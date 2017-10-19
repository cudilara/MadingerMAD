//
//  ViewController.swift
//  midterm1
//
//  Created by Dilara Madinger on 10/19/17.
//  Copyright © 2017 Dilara Madinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var inputMiles: UITextField!
    @IBOutlet weak var timeOutput: UILabel!
    @IBOutlet weak var gasOutput: UILabel!

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        calculateTotals()
    }
    
    func calculateTotals(){
        var miles:Float
        let speed: Float = 20.0
        let milesPerGallon: Float = 24.0
        
        if inputMiles.text!.isEmpty{
            miles = 0.0
        } else{
            miles = Float(inputMiles.text!)!
        }
        let time = speed / miles
        let gas = milesPerGallon / miles
        timeOutput.text = String(time)
        gasOutput.text = String(gas)
    }
    
    override func viewDidLoad() {
        inputMiles.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

