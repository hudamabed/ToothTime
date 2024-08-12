//
//  UIStorybored.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 20/06/2022.
//

import Foundation
import UIKit



extension UIViewController {
    
    
    static var identifier: String {
        return String(describing: self)
    }
        
    static func instantiat() -> Self {
        let mainStorybored = UIStoryboard.init(name: "Main", bundle: nil)
        return mainStorybored.instantiateViewController(identifier: identifier) as! Self
    }
}


