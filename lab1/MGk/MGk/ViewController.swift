//
//  ViewController.swift
//  MGk
//
//  Created by Dilara Madinger on 9/12/17.
//  Copyright © 2017 Dilara Madinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mytext: UITextView!
    @IBOutlet weak var mypicture: UIImageView!
    @IBAction func hbutton(_ sender: UIButton) {
        if sender.tag == 1 {
            mypicture.image=UIImage(named: "hportrait")
            mytext.text="Future Minister of Magic"
        }
        else if sender.tag == 2{
            mypicture.image=UIImage(named: "kimage")
            mytext.text="Future President of USA"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

