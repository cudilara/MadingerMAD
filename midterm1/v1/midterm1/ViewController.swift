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
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var gasLabel: UILabel!
    @IBAction func gasSlider(_ sender: UISlider) {
        let gasAmount = sender.value
        gasLabel.text=String(format: "%.0f", gasAmount)
        
    }
    @IBAction func commuteButton(_ sender: UIButton) {
        calculateTotals()
    }
    @IBOutlet weak var seeSwitch: UISwitch!
//    Switch works only for cars.
    @IBAction func mySwitch(_ sender: UISwitch) {
        if seeSwitch.isOn{
            var miles:Float
            let speed: Float = 20.0
            let milesPerGallon: Float = 24.0
            
            if inputMiles.text!.isEmpty{
                miles = 0.0
            } else{
                miles = Float(inputMiles.text!)!
            }
            let time = 20 * speed / miles
            let gas = 20 * milesPerGallon / miles
            timeOutput.text = String(time)
            gasOutput.text = String(gas)
        } else{
            calculateTotals()
        }
    }
    
    @IBOutlet weak var mySegmentCntrl: UISegmentedControl!
    @IBAction func changeTransport(_ sender: UISegmentedControl) {
        if mySegmentCntrl.selectedSegmentIndex==0{
            myImage.image = UIImage(named: "car")
            calculateTotals()
            let alert=UIAlertController(title: "Suggestion", message: "Have you considered carpooling?", preferredStyle: UIAlertControllerStyle.alert)
            let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(cancelAction)
            let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {action in})
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        } else if mySegmentCntrl.selectedSegmentIndex==1{
            myImage.image = UIImage(named: "bike")
            var miles:Float
            let speed: Float = 10.0
            
            if inputMiles.text!.isEmpty{
                miles = 0.0
            } else{
                miles = Float(inputMiles.text!)!
            }
            let time = speed / miles
            let gas = 0.0
            timeOutput.text = String(time)
            gasOutput.text = String(gas)
        } else {
            myImage.image = UIImage(named: "bus")
            var miles:Float
            let speed: Float = 12.0
            
            if inputMiles.text!.isEmpty{
                miles = 0.0
            } else{
                miles = Float(inputMiles.text!)!
            }
            let time = speed / miles + 0.6
            let gas = 0.0
            timeOutput.text = String(time)
            gasOutput.text = String(gas)
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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

