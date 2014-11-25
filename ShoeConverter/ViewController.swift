//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Zac on 25/11/2014.
//  Copyright (c) 2014 1st1k. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ShoeSizeConstant = 30
    let womenShoeSizeConstant = 30.5

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womenShoeSizeTextField: UITextField!
    @IBOutlet weak var womenConvertedShoeSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {

        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(mensShoeSizeTextField.text.toInt()! + ShoeSizeConstant) in European Men's Shoe Size"
        
        womenConvertedShoeSizeLabel.hidden = false
        womenConvertedShoeSizeLabel.text = "\((womenShoeSizeTextField.text as NSString).doubleValue + womenShoeSizeConstant) in European Women's Shoe Size"
        
        
    }

}

