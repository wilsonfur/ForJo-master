//
//  ShakeBodyViewController.swift
//  ForJo
//
//  Created by wilson on 2018/4/2.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit

class ShakeBodyViewController: UIViewController {
    @IBOutlet weak var segmentFocus: UIView!
    @IBOutlet weak var etswitch: UIImageView!
    
    @IBOutlet weak var shakeBodySegmentControl: UISegmentedControl!
    @IBOutlet weak var trainingClass: UIView!
    @IBOutlet weak var extendSports: UIView!
    
    @IBAction func indexChanged(sender: UISegmentedControl) {
        switch shakeBodySegmentControl.selectedSegmentIndex
        {
        case 0:
            etswitch.image = UIImage(named: "et01")
            trainingClass.isHidden = false
            extendSports.isHidden = true
            UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, animations:{
                self.segmentFocus.frame.origin.x = 0
            })
        case 1:
            etswitch.image = UIImage(named: "et02")
            trainingClass.isHidden = true
            extendSports.isHidden = false
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
