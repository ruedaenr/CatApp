//
//  ViewController.swift
//  Toy_2
//
//  Created by Enrique Rueda on 1/7/19.
//  Copyright © 2019 appdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var submitted : Bool = false
    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var ClassLabel: UILabel!
    
    @IBOutlet weak var NameTextField: UITextField!
    
    @IBOutlet weak var ClassTextField: UITextField!
    
    @IBOutlet weak var SubmitButton: UIButton!
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    @IBAction func SubmitButtonTapped(_ sender: Any) {
        if(submitted){
            NameLabel.isHidden = false
            ClassLabel.isHidden = false
            NameTextField.isHidden = false
            ClassTextField.isHidden = false
            DisplayLabel.isHidden = true
            SubmitButton.setTitle("Submit", for: .normal)
        } else{
            NameLabel.isHidden = true
            ClassLabel.isHidden = true
            NameTextField.isHidden = true
            ClassTextField.isHidden = true
            let name = NameTextField.text ?? ""
            let classYr = ClassTextField.text ?? ""
            DisplayLabel.text = "Welcome, " + name + " of " + classYr + "!"
            NameTextField.text = ""
            ClassTextField.text = ""
            DisplayLabel.isHidden = false
            SubmitButton.setTitle("Clear", for: .normal)
        }
        
    }
    
    override func viewDidLoad() {
       super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

