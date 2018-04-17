//
//  KnowledgeViewController.swift
//  ForJo
//
//  Created by wilson on 2018/4/8.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit
var detect = false
class KnowledgeViewController: UIViewController {

    @IBOutlet weak var QAIMG: UIImageView!
    @IBOutlet weak var bottomDistance: NSLayoutConstraint!
    @IBOutlet weak var tagAUIBTN: UIButton!
    
    @IBOutlet weak var bottomUIDistance: NSLayoutConstraint!
    @IBAction func tagABTN(_ sender: UIButton) {
        detect = !detect
        if detect == true{
          QAIMG.image = UIImage(named:"qa02")
        } else {
        QAIMG.image = UIImage(named:"qa01")
        }
        
    }
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}
