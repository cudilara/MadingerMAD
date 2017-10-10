//
//  ViewController.swift
//  lab3
//
//  Created by Dilara Madinger on 10/9/17.
//  Copyright © 2017 Dilara Madinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var weatherIn: UITextField!
    @IBOutlet weak var peopleIn: UITextField!
    @IBOutlet weak var dollarsIn: UITextField!
    @IBOutlet weak var resultOut: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateResult() {
        var suggestion:String
        let degree = Int(weatherIn.text!)
//        let peopleNum = Int(peopleIn.text!)
//        let money = Int(dollarsIn.text!)
//        var perperson:Int
//        var ratio:String
        
        if degree == nil {
            suggestion = "Go to the rec center!"
        } else if degree! > 50{
            suggestion = "Go for a walk!"
        } else {
            suggestion = "Read a book!"
        }
        
//        if peopleNum != 0{
//            perperson = money! / peopleNum!
//            ratio = String(perperson)
//        }
//        Had trouble setting up the result.
//        resultOut.text=suggestion + " You have about $ " + ratio + " per person."
        resultOut.text=suggestion
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateResult()
    }
    
    override func viewDidLoad() {
        weatherIn.delegate=self
        peopleIn.delegate=self
        dollarsIn.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTapGestureRecognized(_ sender: Any) {
        self.resignFirstResponder()
    }

}

