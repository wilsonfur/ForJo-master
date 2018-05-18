//
//  HomeViewController.swift
//  ForJo
//
//  Created by wilson on 2018/4/3.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit


class TrainingViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var MIN5UI: UIImageView!
    @IBOutlet weak var MIN10UI: UIImageView!
    @IBOutlet weak var MIN15UI: UIImageView!
    
    @IBOutlet weak var doneButton: UIButton!
    
    @IBAction func countTrainingButton5(_ sender: UIButton) {

        MIN5UI.isHidden = false
        MIN10UI.isHidden = true
        MIN15UI.isHidden = true
        doneButton.backgroundColor = UIColor(red: 247/255, green: 122/255, blue: 37/255, alpha: 1/1)
        doneButton.isUserInteractionEnabled = true
    }
    @IBAction func countTrainingButton10(_ sender: UIButton) {
        MIN10UI.isHidden = false
        MIN5UI.isHidden = true
        MIN15UI.isHidden = true
        doneButton.backgroundColor = UIColor(red: 247/255, green: 122/255, blue: 37/255, alpha: 1/1)
        doneButton.isUserInteractionEnabled = true
    }
    @IBAction func countTrainingButton15(_ sender: UIButton) {
        MIN15UI.isHidden = false
        MIN10UI.isHidden = true
        MIN5UI.isHidden = true
        doneButton.backgroundColor = UIColor(red: 247/255, green: 122/255, blue: 37/255, alpha: 1/1)
        doneButton.isUserInteractionEnabled = true
    }



    @IBAction func exitBTN(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MIN5UI.isHidden = true
        MIN10UI.isHidden = true
        MIN15UI.isHidden = true
        doneButton.backgroundColor = UIColor(red: 223/255, green: 223/255, blue: 223/255, alpha: 1/1)
        doneButton.isUserInteractionEnabled = false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
