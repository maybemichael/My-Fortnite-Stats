//
//  TextField.swift
//  Fortnite Stats
//
//  Created by Michael on 4/8/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit

extension UITextField {
    func useUnderline() {
        let border = CALayer()
        let borderWidth = CGFloat(4.0)
        border.borderColor = UIColor.black.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - borderWidth, width: self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = borderWidth
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
