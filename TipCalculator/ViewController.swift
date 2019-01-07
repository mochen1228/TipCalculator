//
//  ViewController.swift
//  TipCalculator
//
//  Created by Gyulnara Grigoryan  on 1/6/19.
//  Copyright © 2019 Chen Mo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    @IBOutlet weak var CheckAmount: UITextField!
    @IBOutlet weak var TipAmount: UILabel!
    @IBOutlet weak var FinalAmount: UILabel!
    
    var TipPercentage = 0.0
    
    
    @IBAction func TipOption1(_ sender: Any) {
        self.TipPercentage = 0.1
        self.CalculateButton()
    }
    
    @IBAction func TipOption2(_ sender: Any) {
        self.TipPercentage = 0.15
        self.CalculateButton()
    }
    
    @IBAction func TipOption3(_ sender: Any) {
        self.TipPercentage = 0.2
        self.CalculateButton()
    }
    
    func CalculateButton() {
        let CheckAmount = Double(self.CheckAmount.text!)
        if CheckAmount == nil {
            return
        }
        let TipAmount = CheckAmount! * self.TipPercentage
        let FinalAmount = CheckAmount! + TipAmount
        self.TipAmount.text = String(TipAmount)
        self.FinalAmount.text = String(FinalAmount)
    }

}

