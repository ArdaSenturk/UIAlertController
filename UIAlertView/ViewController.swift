//
//  ViewController.swift
//  UIAlertView
//
//  Created by Arda SENTURK on 06/11/2016.
//  Copyright © 2016 Arda SENTURK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func alert1ButtonAction(_ sender: Any) {
        
        alert(message: "Hello", title: "")
        
    }
    
    @IBAction func alert2ButtonAction(_ sender: Any) {
        
        alert2(message: "Simple alertView demo with Cancel and Ok.", title: "Alert 2")
        
    }
    
    @IBAction func alert3ButtonAction(_ sender: Any) {
        
        alert3(message: "Alert Action", title: "")
        
    }

    func alert(message: String, title: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    func alert2(message: String, title: String) {
    
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        let DestructiveAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.destructive) { (result : UIAlertAction) -> Void in
            print("Destructive")
        }
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
            print("OK")
        }
        alertController.addAction(DestructiveAction)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)

    }
    
    func alert3(message: String, title: String) {
    
        var alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // Create the actions
        var okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            UIAlertAction in
            NSLog("OK Pressed")
        }
        var cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) {
            UIAlertAction in
            NSLog("Cancel Pressed")
        }
        
        // Add the actions
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        // Present the controller
        self.present(alertController, animated: true, completion: nil)
    
    }
    
}

