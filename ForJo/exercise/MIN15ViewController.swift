//
//  15MINPraticeViewController.swift
//  ForJo
//
//  Created by wilson on 2018/4/13.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit
public var timer:Timer!


class MIN15ViewController: UIViewController {

    var countNumber = 5
    
    @IBAction func btnPause(_ sender: UIButton) {
    }

    @IBOutlet weak var countNumberLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor(red: 74/255, green: 74/255, blue: 74/255, alpha: 1/1)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(tickDown), userInfo: nil, repeats: true)
    }
    
    @objc public func tickDown(){
        countNumber -= 1
        print(countNumber)
        if countNumber >= 1 {
            countNumberLabel.text = "\(countNumber)"
        } else if countNumber == 0 {
            performSegue(withIdentifier: "exerciseSegue", sender: (Any).self)
            timer.invalidate()
            return()
        }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
