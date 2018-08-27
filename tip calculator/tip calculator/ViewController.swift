//
//  ViewController.swift
//  tip calculator
//
//  Created by Jackson de Gruiter on 8/21/18.
//  Copyright © 2018 Jackson de Gruiter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    let defaults = UserDefaults.standard
   

    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func bill(_ sender: Any) {
        let defaults = UserDefaults.standard
        let segment1 = defaults.double(forKey: "box1")
        let segment2 = defaults.double(forKey: "box2")
        let segment3 = defaults.double(forKey: "box3")
        let tipPercentages = [segment1*0.1, segment2*0.1, segment3*0.1]
        tipControl.setTitle(String(format: "%.2f%%", segment1), forSegmentAt: 0)
        tipControl.setTitle(String(format: "%.2f%%", segment2), forSegmentAt: 1)
        tipControl.setTitle(String(format: "%.2f%%", segment3), forSegmentAt: 2)
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]*0.1
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)

    }
    
    
}

