//
//  HomeViewController.swift
//  ForJo
//
//  Created by wilson on 2018/4/3.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit


class GeneralViewController: UIViewController,SwiftySwitchDelegate {
    let shapelayer = CAShapeLayer()
    let sportslayer = CAShapeLayer()


    @IBOutlet weak var remiderBG: UIImageView!
    @IBOutlet var switch1: SwiftySwitch!
    @IBOutlet weak var sharePopUp: UIImageView!
    @IBAction func shareToday(_ sender: Any) {
        sharePopUp.image = UIImage(named:"p01")
    }
    @IBAction func weekData(_ sender: Any) {
        sharePopUp.image = UIImage(named:"p01-1")
    }
    
    func valueChanged(sender: SwiftySwitch) {
        if switch1.isOn{
           remiderBG.image = UIImage(named: "set01")
        }else{
            remiderBG.image = UIImage(named: "set02")
        }
    }

    @IBAction func closeBTN(_ sender: UIButton) {
        dismiss(animated: true)
        
    }
    

    
  

    override func viewDidLoad() {
        
        super.viewDidLoad()
        switch1?.delegate = self

        
     
        
       
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
