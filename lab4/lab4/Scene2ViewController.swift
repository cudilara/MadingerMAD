//
//  Scene2ViewController.swift
//  lab4
//
//  Created by Dilara Madinger on 10/18/17.
//  Copyright © 2017 Dilara Madinger. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myText: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "doneSegue"{
            let scene1ViewController = segue.destination as! ViewController
            if myText.text!.isEmpty == false{
                scene1ViewController.user.myNote = myText.text
            }
        }
    }
    
    override func viewDidLoad() {
        myText.delegate=self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
