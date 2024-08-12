//
//  UIButtonEx.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 03/07/2022.
//

import Foundation
import UIKit


extension UIButton {
    @IBInspectable  var selectedImage: UIImage?{
        set {
            self.setImage(newValue, for: .selected)
        }
        get {
            return self.image(for: .selected)
            
        }
    }
}
