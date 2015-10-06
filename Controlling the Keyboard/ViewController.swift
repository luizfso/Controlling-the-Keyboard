//
//  ViewController.swift
//  Controlling the Keyboard
//
//  Created by Luiz Fernando Santiago on 10/5/15.
//  Copyright © 2015 Luiz Fernando Santiago. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func actionButton(sender: AnyObject) {
        
        resultLabel.text = textField.text
        textField.resignFirstResponder()
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.textField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        
        textField.resignFirstResponder()
        return true
        
    }
}

