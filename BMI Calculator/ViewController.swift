//
//  ViewController.swift
//  IBM Calculator
//
//  Created by Bruna Matilde on 30/09/18.
//  Copyright © 2018 nelbuiolaluce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var weightTextFiedl: UITextField!
    
   
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func calculateBMI(bmim: Double) {
        if bmim > 25 {
            resultLabel.text = "Your BMI is \(bmim). You are overweight"
        } else if bmim > 18.5 {
            resultLabel.text = "Your BMI is \(bmim). You have a normal weight"
        } else {
           resultLabel.text = "Your BMI is \(bmim). You are underweight"
        }
       
    }
    
    @IBAction func buttonCalculate(_ sender: UIButton) {
       
        let h = Double(heightTextField.text!)
        let w = Double(weightTextFiedl.text!)
        let bmiM = BMIModel(height: h!, weight: w!)
      
        calculateBMI(bmim: bmiM.bmi())
    }
    
}

