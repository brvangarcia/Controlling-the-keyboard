//
//  ViewController.swift
//  Controling the keyboard
//
//  Created by Bryan on 7/30/16.
//  Copyright © 2016 Bryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var text: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        text.text = label.text
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.text.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        text.resignFirstResponder()
        return true
        
    }


}



