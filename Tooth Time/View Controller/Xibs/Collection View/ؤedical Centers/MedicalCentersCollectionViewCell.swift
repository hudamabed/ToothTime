//
//  MedicalCentersCollectionViewCell.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 20/08/2024.
//

import UIKit

class MedicalCentersCollectionViewCell: UICollectionViewCell {
    
    //MARK: Outlet
    
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //MARK: - Configurations
    func configureCell() {
        if let object = self.object as? MedicalCenters {
        }
    }
}
