//
//  KnowledgeTableViewController.swift
//  ForJo
//
//  Created by wilson on 2018/4/8.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit

class KnowledgeTableViewController: UITableViewController {

    @IBOutlet var tableViewContentCell: UITableViewCell!
    @IBOutlet var kViewA: UIView!
    @IBOutlet var kViewB: UIView!
    
    @IBOutlet var test: UITableViewCell!
    
    @IBAction func kButtonA(_ sender: UIButton) {
      
    }
    
    @IBAction func kButtonB(_ sender: UIButton) {

    }
    
    @IBAction func kButtonC(_ sender: UIButton) {
        print("C")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
}
