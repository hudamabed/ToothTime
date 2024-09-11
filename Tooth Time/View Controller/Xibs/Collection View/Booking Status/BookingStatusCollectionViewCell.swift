//
//  BookingStatusCollectionViewCell.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 11/09/2024.
//

import UIKit

class BookingStatusCollectionViewCell: UICollectionViewCell {
    //MARK: Outlet
    @IBOutlet weak var selectedView: UIView!
    @IBOutlet weak var lblStatus: UILabel!
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectedView.roundCorners(isTopLeft: true, isTopRight: true, isBottomLeft: false, isBottomRight: false, radius: 50)
    }
    
    //MARK: - Configurations
    func configureCell() {
        if let object = self.object as? BookingStatus {
            lblStatus.text = object.status
        }
    }
    
}
