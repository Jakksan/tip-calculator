//
//  SettingViewController.swift
//  tip calculator
//
//  Created by Jackson de Gruiter on 8/26/18.
//  Copyright © 2018 Jackson de Gruiter. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    @IBOutlet weak var custom_amount_1: UITextField!
    @IBOutlet weak var custom_amount_2: UITextField!
    @IBOutlet weak var custom_amount_3: UITextField!
    
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func box1Edit(_ sender: UITextField) {
        defaults.set(Double(custom_amount_1.text!), forKey: "box1")
        let box1_text = defaults.double(forKey: "box1")
        custom_amount_1.text = String(format: "%.2f%%", box1_text)
        defaults.synchronize()
    }
    
    @IBAction func box2Edit(_ sender: UITextField) {
        defaults.set(Double(custom_amount_2.text!), forKey: "box2")
        let box2_text = defaults.double(forKey: "box2")
        custom_amount_2.text = String(format: "%.2f%%", box2_text)
        defaults.synchronize()
    }
    
    @IBAction func box3Edit(_ sender: UITextField) {
        defaults.set(Double(custom_amount_3.text!), forKey: "box3")
        let box3_text = defaults.double(forKey: "box3")
        custom_amount_3.text = String(format: "%.2f%%", box3_text)
        defaults.synchronize()
    }
    
    @IBAction func tapScreen(_ sender: Any) {
        view.endEditing(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
