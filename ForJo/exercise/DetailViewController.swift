//
//  DetailViewController.swift
//  ForJo
//
//  Created by wilson on 2018/4/18.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    let imgArr = [UIImage(named:"Practice04.png")!,UIImage(named:"Practice05.png")!]
    @IBOutlet weak var slideShow: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        slideShow.animationImages = imgArr
        slideShow.animationDuration = 3
        slideShow.animationRepeatCount = 0
        slideShow.startAnimating()


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
