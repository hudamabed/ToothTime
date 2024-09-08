//
//  TimeCollectionViewCell.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 07/09/2024.
//

import UIKit

class TimeCollectionViewCell: UICollectionViewCell {
    //MARK: Outlet
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var viewBackground: UIView!    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //MARK: - Configurations
    func configureCell() {
        if let object = self.object as? Time {
            lblTime.text = object.time
            //viewBackground.backgroundColor = UIColor(named: object.backgroundColor ?? "")
        }
    }
}

