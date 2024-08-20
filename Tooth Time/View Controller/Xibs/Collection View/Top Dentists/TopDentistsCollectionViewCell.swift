//
//  TopDentistsCollectionViewCell.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 20/08/2024.
//

import UIKit

class TopDentistsCollectionViewCell: UICollectionViewCell {
    
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
