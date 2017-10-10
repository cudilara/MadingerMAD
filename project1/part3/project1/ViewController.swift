//
//  ViewController.swift
//  project1
//
//  Created by Dilara Madinger on 10/4/17.
//  Copyright © 2017 Dilara Madinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getVideo(videoCode: "watch?v=RRVIVJjuaHE")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getVideo(videoCode:String){
        let url = URL(string: "https://www.youtube.com/\(videoCode)")
        myWebView.loadRequest(URLRequest(url: url!))
    }

}

