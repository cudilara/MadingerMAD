//
//  ViewController.swift
//  project1
//
//  Created by Dilara Madinger on 10/4/17.
//  Copyright © 2017 Dilara Madinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate{

    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var myText: UITextView!
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getVideo(videoCode:String){
        let url = URL(string: "https://www.youtube.com/\(videoCode)")
        myWebView.loadRequest(URLRequest(url: url!))
    }
    
     override func viewDidLoad() {
        myText.delegate=self
        getVideo(videoCode: "watch?v=RRVIVJjuaHE")
        super.viewDidLoad()
    }
    @IBAction func onTapGestureRecognized(_ sender: Any) {
        myText.resignFirstResponder()
    }
}
