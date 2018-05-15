//
//  KnowledgeViewController.swift
//  ForJo
//
//  Created by wilson on 2018/4/8.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit
var detectA = false
var detectB = false
var detectC = false
class KnowledgeViewController: UIViewController {

    @IBOutlet weak var tagAllQuest: UIView!
    @IBOutlet weak var tagAQuest: UIView!
    @IBOutlet weak var tagBQuest: UIView!
    @IBOutlet weak var tagCQuest: UIView!
    @IBOutlet weak var QAIMG: UIImageView!
    @IBOutlet weak var bottomDistance: NSLayoutConstraint!
    @IBOutlet weak var tagAUIBTN: UIButton!
    @IBOutlet weak var bottomUIDistance: NSLayoutConstraint!

    
    
    @IBAction func tagABTN(_ sender: UIButton) {
        tagBQuest.isHidden = true
        tagCQuest.isHidden = true
        detectC = false
        detectB = false
        detectA = !detectA
        if detectA == true {
          QAIMG.image = UIImage(named:"qa02")
            tagAQuest.isHidden = false
            tagAllQuest.isHidden = true
        } else {
        QAIMG.image = UIImage(named:"qa01")
        tagAllQuest.isHidden = false
     
        }
        
    }
  
    @IBAction func tagBBTN(_ sender: UIButton) {
        tagBQuest.isHidden = false
        tagAQuest.isHidden = true
        tagCQuest.isHidden = true
        detectA = false
        detectC = false
        detectB = !detectB
        if detectB == true{
            QAIMG.image = UIImage(named:"qa03")
            tagBQuest.isHidden = false
            tagAllQuest.isHidden = true

        } else {
            QAIMG.image = UIImage(named:"qa01")
            tagAllQuest.isHidden = false
         
        }
        
    }
    
    @IBAction func tagCBTN(_ sender: UIButton) {
        tagBQuest.isHidden = true
        tagAQuest.isHidden = true
        detectA = false
        detectB = false
        detectC = !detectC
        
        if detectC == true {
            QAIMG.image = UIImage(named:"qa04")
            tagAllQuest.isHidden = true
            tagCQuest.isHidden = false

        } else {
            QAIMG.image = UIImage(named:"qa01")
            tagAllQuest.isHidden = false

        }
        
    }
    
    
    override func viewDidLoad() {
        
        tagAQuest.isHidden = true
        tagBQuest.isHidden = true
        tagCQuest.isHidden = true
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}
