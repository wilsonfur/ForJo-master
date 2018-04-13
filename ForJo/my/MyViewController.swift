//
//  MyViewController.swift
//  ForJo
//
//  Created by wilson on 2018/4/3.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit
var KGCount = 1


class MyViewController: UIViewController {
      @IBOutlet weak var segmentFocus: UIView!
    @IBOutlet weak var mySwitchTab: UIImageView!
    @IBOutlet weak var state64A: UIButton!
    @IBOutlet weak var state63: UIButton!
    @IBOutlet weak var state54: UIButton!
    
    @IBOutlet weak var testview: UIImageView!
    @IBAction func switchKG(_ sender: Any) {
        KGCount += 1
        if KGCount%3 == 2 {
            testview.image = UIImage(named:"s05")
            state64A.alpha = 0
            state63.alpha = 1
            state54.alpha = 0
            
        }else if KGCount%3 == 0{
            testview.image = UIImage(named:"s04")
            state64A.alpha = 0
            state63.alpha = 0
            state54.alpha = 1
            
        }else if KGCount%3 == 1 {
            testview.image = UIImage(named:"s03")
            state64A.alpha = 1
            state63.alpha = 0
            state54.alpha = 0
            
        }
    }
    @IBOutlet weak var MySegmentControl: UISegmentedControl!
    @IBOutlet weak var review: UIView!
    @IBOutlet weak var weightRecord: UIView!
    
    @IBAction func MySegmentControl(sender: UISegmentedControl) {
        switch MySegmentControl.selectedSegmentIndex
        {
        case 0:
            review.isHidden = false
            weightRecord.isHidden = true
            mySwitchTab.image = UIImage(named: "s01")
            UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, animations:{
                self.segmentFocus.frame.origin.x = 0
            })
        case 1:
            review.isHidden = true
            weightRecord.isHidden = false
            mySwitchTab.image = UIImage(named: "s01-1")
            UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, animations:{
                self.segmentFocus.frame.origin.x = 187.5
            })
        default:
            break;
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
