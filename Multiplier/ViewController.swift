//
//  ViewController.swift
//  Multiplier
//
//  Created by De La Torre, Julian - Student on 8/25/22.
//

import UIKit

@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}
class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var firstInput: UITextField!
    
    @IBOutlet weak var secondInput: UITextField!
    
    @IBOutlet weak var Output: UILabel!
    
    var firstNum = ""
    var secondNum = ""
    
    
    @IBAction func multiplyButton(_ sender: UIButton) {
        
        firstInput.resignFirstResponder()
        secondInput.resignFirstResponder()
        if firstInput.text == "" || secondInput.text == ""{
            Output.text = "Invalid Input"
        }
        else{
            firstNum = firstInput.text ?? ""
            secondNum = secondInput.text ?? ""
                
            let firstNumToInt = Int(firstNum) ?? 0
            let secondNumToInt = Int(secondNum) ?? 0
        
                
            let product = firstNumToInt * secondNumToInt
            Output.text = String(product)
                
            
        }
        
        print(firstNum)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstInput.delegate = self
        secondInput.delegate = self
        
    }


}

