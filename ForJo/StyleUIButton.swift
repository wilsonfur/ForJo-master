//
//  StyleUIButton.swift
//  ForJo
//
//  Created by wilson on 2018/4/4.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit

class StyleUIButton: UIButton {
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.backgroundColor = UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 0.1)
        super.touchesMoved(touches, with: event)
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.backgroundColor = UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 0)
        super.touchesEnded(touches, with: event)
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
