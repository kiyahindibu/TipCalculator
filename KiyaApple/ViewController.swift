//
//  ViewController.swift
//  KiyaApple
//
//  Created by Kiya Segni on 8/29/18.
//  Copyright © 2018 Kiya Segni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func OnTab(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func CalculateTip(_ sender: Any) {
        let tipPercentages = [0.18 , 0.20, 0.25]
        let bill = Double(BillField.text!)  ?? 0
        let tip = bill * tipPercentages [TipControl.selectedSegmentIndex]
    
        
        let total = bill + tip
        
    
        TipLabel.text = String(format: "$%.2f",tip)
        TotalLabel.text = String(format: "$%.2f",total)
    }
}

