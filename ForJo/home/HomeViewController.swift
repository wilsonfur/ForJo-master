//
//  HomeViewController.swift
//  ForJo
//
//  Created by wilson on 2018/4/3.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit
var HomeStateCount = 1
var setCount = 1

class HomeViewController: UIViewController,SwiftySwitchDelegate {
    @IBOutlet weak var suggestA: UIView!
    @IBOutlet weak var suggestB: UIView!
    @IBOutlet weak var suggestC: UIView!
    
    
    func valueChanged(sender: SwiftySwitch) {
        if switch1.isOn{
           remiderBG.image = UIImage(named: "set01")
        }else{
            remiderBG.image = UIImage(named: "set02")
        }
    }
    @IBOutlet var switch1: SwiftySwitch!
    @IBOutlet weak var remiderBG: UIImageView!

  
    @IBAction func switchHomeState(_ sender: UIButton) {
        HomeStateCount += 1
        if HomeStateCount%3 == 2 {
            homeState.image = UIImage(named:"h02")
            suggestA.isHidden = true
            suggestB.isHidden = false
            suggestC.isHidden = true

            
        }else if HomeStateCount%3 == 0{
            homeState.image = UIImage(named:"h03")
            suggestA.isHidden = true
            suggestB.isHidden = true
            suggestC.isHidden = false
        
            
        }else if HomeStateCount%3 == 1 {
            homeState.image = UIImage(named:"h01")
            suggestA.isHidden = false
            suggestB.isHidden = true
            suggestC.isHidden = true
        
            
        }
    }
    @IBOutlet weak var homeState: UIImageView!
    @IBOutlet weak var sharePopUp: UIImageView!
    @IBAction func shareToday(_ sender: Any) {
        sharePopUp.image = UIImage(named:"p01")
    }
    @IBAction func weekData(_ sender: Any) {
        sharePopUp.image = UIImage(named:"p01-1")
    }
    
    
    @IBAction func test(_ sender: Any) {
    }
    @IBAction func test2(_ sender: UIButton) {
        dismiss(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch1?.delegate = self
        suggestB.isHidden = true
        suggestC.isHidden = true
        // Do any additional setup after loading the view.
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
