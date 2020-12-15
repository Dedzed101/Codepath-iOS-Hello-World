//
//  ViewController.swift
//  MadDemo
//
//  Created by Daniel Bracamontes on 12/15/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        backgroundColor = view.backgroundColor
    }

    @IBAction func DidTapButton(_ sender: Any) {
        textLabel.textColor = UIColor.orange
    }
    
    @IBAction func DidTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }

    @IBAction func DidTapTextButton(_ sender: Any) {
        //textLabel.text = "Goodbye!"
        textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
    }
  
    @IBAction func OnResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Daniel!"
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.black
    }
    
}

