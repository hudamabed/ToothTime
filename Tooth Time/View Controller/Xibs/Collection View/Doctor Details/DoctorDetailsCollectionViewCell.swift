//
//  DoctorDetailsCollectionViewCell.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 03/09/2024.
//

import UIKit

class DoctorDetailsCollectionViewCell: UICollectionViewCell {
    //MARK: Outlet
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //MARK: - Configurations
    func configureCell() {
        if let object = self.object as? TopDentists {
        }
    }
}
