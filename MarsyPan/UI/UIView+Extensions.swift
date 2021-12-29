//
//  UIView+Extensions.swift
//  MarsyPan
//
//  Created by Ruben Hansen-Rojas on 12/29/21.
//

import Foundation
import UIKit

extension UIView {
    func setDropShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowRadius = 3
    }
}
