//
//  textFieldMaterial.swift
//  genericClasses
//
//  Created by Aseem 14 on 29/05/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import Foundation
import Material
import UIKit

extension TextField {
    func setTextField() {
        self.dividerActiveColor = UIColor(red:0.00, green:0.00, blue:0.00, alpha:0.12)
        self.placeholderNormalColor = UIColor(red:0.00, green:0.00, blue:0.00, alpha:0.55)
        self.placeholderActiveColor = UIColor(red:0.00, green:0.00, blue:0.00, alpha:0.55)
//        self.placeholderLabel.font = FontFamily.Gotham.medium.font(size: 16)
//        self.font = FontFamily.Gotham.medium.font(size: 16)
//        self.placeholderVerticaloffset = 6
    }
}
extension Button {
    func setLogin() {
        self.layer.width = 150
        self.layer.height = 125
        self.setTitleColor(.white, for: .normal)
    }
}
