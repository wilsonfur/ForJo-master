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
