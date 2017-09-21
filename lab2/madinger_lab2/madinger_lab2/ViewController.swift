//
//  ViewController.swift
//  madinger_lab2
//
//  Created by Dilara Madinger on 9/16/17.
//  Copyright © 2017 Dilara Madinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBOutlet weak var capitalSwitch: UISwitch!
    @IBOutlet weak var colorSwitch: UISwitch!
    @IBOutlet weak var fontSizeLabel: UILabel!
    @IBOutlet weak var fontSizeSlider: UISlider!
    func updateImage(){
        if imageControl.selectedSegmentIndex==0{
            mainLabel.text="Leia"
            mainImage.image=UIImage(named: "leia")
        }
        else if imageControl.selectedSegmentIndex==1 {
            mainLabel.text="Rey"
            mainImage.image=UIImage(named: "ray")
        }
    }
    func updateCaps(){
        if capitalSwitch.isOn {
            mainLabel.text=mainLabel.text?.uppercased()
        } else {
            mainLabel.text=mainLabel.text?.lowercased()
        }

    }
    func changeColor(){
        if colorSwitch.isOn{
            mainLabel.textColor=UIColor.red
        } else {
            mainLabel.textColor=UIColor.black
        }
        
    }
    @IBAction func changeFontSize(_ sender: UISlider) {
        let fontSize=sender.value
        fontSizeLabel.text=String(format: "%.0f", fontSize)
        mainLabel.font=UIFont.systemFont(ofSize: CGFloat(fontSize))
    }
    @IBAction func updateFont(_ sender: UISwitch) {
            updateCaps()
    }
    @IBAction func updateColor(_ sender: UISwitch) {
        changeColor()
    }
    @IBAction func changeImage(_ sender: UISegmentedControl) {
        updateImage()
        updateCaps()
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

