//
//  ExerciseViewController.swift
//  ForJo
//
//  Created by wilson on 2018/4/17.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {
    @IBAction func backToTrainingMenu(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
//        let sb = UIStoryboard(name: "Main", bundle: nil)
//        let vc = sb.instantiateViewController(withIdentifier: "MainTabBarController") as! UITabBarController
//        self.tabBarController?.selectedIndex = 3
//        self.present(vc, animated: false, completion: nil)
//        self.navigationController?.popToRootViewController(animated: true)

    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }



}
