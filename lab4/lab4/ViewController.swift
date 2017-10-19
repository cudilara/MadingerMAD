//
//  ViewController.swift
//  lab4
//
//  Created by Dilara Madinger on 10/17/17.
//  Copyright © 2017 Dilara Madinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var user = Notes()
    let filename = "notes.plist"
    
    @IBOutlet weak var readyText: UITextField!
    
    @IBAction func unwindSegue(_ segue:UIStoryboardSegue){
        readyText.text = user.myNote
    }
    
    func docFilePath(_ filename: String) -> String?{
        let path = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.allDomainsMask, true)
        let dir = path[0] as NSString
        print(dir.appendingPathComponent(filename))
        return dir.appendingPathComponent(filename)
    }
    
    override func viewDidLoad() {
//        let filePath = docFilePath(filename)
        
//        if FileManager.default.fileExists(atPath: filePath!){
//            let path = filePath
//            NSArray(contentsOfFile: path!) as! [String]
            readyText.text=user.myNote
//        }
        
        //application instance
        let app = UIApplication.shared
        //subscribe to the UIApplicationWillResignActiveNotification notification
        NotificationCenter.default.addObserver(self, selector: #selector(UIApplicationDelegate.applicationWillResignActive(_:)), name: NSNotification.Name(rawValue: "UIApplicationWillResignActiveNotification"), object: app)

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func applicationWillResignActive(_ notification: Notification){
        let filePath = docFilePath(filename)
        let data = NSMutableArray()
        //adds
        if user.myNote != nil{
//            data.addObjects(user.myNote)
            
        }
        //write the contents of the array to our plist file
        data.write(toFile: filePath!, atomically: true)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

