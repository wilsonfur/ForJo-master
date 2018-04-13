//
//  ViewController.swift
//  switchcustomdemo
//
//  Created by Yogesh Patel on 14/12/17.
//  Copyright © 2017 Yogesh Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SwiftySwitchDelegate {
   
    
    func valueChanged(sender: SwiftySwitch) {
        if switch1.isOn{
            self.view.backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        }else{
            self.view.backgroundColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        }
    }
    

    @IBOutlet var switch1: SwiftySwitch!
   
    override func viewDidLoad() {
        super.viewDidLoad()
       switch1.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

