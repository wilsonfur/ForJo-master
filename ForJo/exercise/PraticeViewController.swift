//
//  PraticeViewController.swift
//  ForJo
//
//  Created by wilson on 2018/4/13.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit
var currentStep = 1

class PraticeViewController: UIViewController {
  
    @IBOutlet weak var backBTNUI: UIButton!
    @IBOutlet weak var nextBTNUI: UIButton!
    @IBOutlet weak var praticeScrollView: UIScrollView!
    
    func scrollAnimation(){
        UIView.animate(withDuration: 0.3, delay: 0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
            self.praticeScrollView.contentOffset.y = 0 }, completion: nil)
    }
    
    @IBAction func nextBTN(_ sender: UIButton) {
        praticeIMG.image = UIImage(named: "Practice02")
        backBTNUI.isHidden = false
        nextBTNUI.isHidden = true
        scrollAnimation()
      
    }
    
    @IBAction func backBTN(_ sender: UIButton) {
        praticeIMG.image = UIImage(named: "Practice01")
        backBTNUI.isHidden = true
        nextBTNUI.isHidden = false
        scrollAnimation()
    }
  
    
    @IBOutlet weak var praticeIMG: UIImageView!
    @IBAction func exit(_ sender: UIButton) {
        dismiss(animated: true)

    }
    
    override func viewDidLoad() {
        backBTNUI.isHidden = true
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
