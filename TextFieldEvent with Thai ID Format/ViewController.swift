//
//  ViewController.swift
//  TextFieldEvent with Thai ID Format
//
//  Created by Phyu Thandar Khin on 30/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var thaiIDtextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func textfieldeditchanged(_ sender: Any) {
        if let currentInput = thaiIDtextfield.text {
            switch currentInput.count {
            case 2,7,14:
                let firstPart = currentInput.substring(to: currentInput.count - 1)
                let hyphen = "-"
                let lastPart = currentInput.substring(from: currentInput.count - 1)
                
                thaiIDtextfield.text = "\(firstPart)\(hyphen)\(lastPart)"
                
                
            case 17:
                let firstPart = currentInput.substring(to: currentInput.count - 1)
                let hyphen = "-"
                let lastPart = currentInput.substring(from: currentInput.count - 1)
                
                thaiIDtextfield.text = "\(firstPart)\(hyphen)\(lastPart)"

            
            case let i where i >= 18:
                
                thaiIDtextfield.text = currentInput.substring(to: 18)
                thaiIDtextfield.resignFirstResponder()
                
            default:
                print()
            }
        }
    }
   
    @IBAction func imdonebuttonclicked(_ sender: Any) {
        thaiIDtextfield.resignFirstResponder()
    }
    
}

