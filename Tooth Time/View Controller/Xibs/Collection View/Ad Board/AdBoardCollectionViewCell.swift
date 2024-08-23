//
//  AdBoardCollectionViewCell.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 20/08/2024.
//

import UIKit

class AdBoardCollectionViewCell: UICollectionViewCell {
    
    //MARK: Outlet
    @IBOutlet weak var imgAd: UIImageView!
    @IBOutlet weak var lblHeader: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var viewOval: UIView!
    @IBOutlet weak var viewDot1: UIView!
    @IBOutlet weak var viewDot2: UIView!
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //MARK: - Configurations
    func configureCell() {
        if let object = self.object as? AdBoard {
            imgAd.image = UIImage(named: object.image ?? "")
            lblHeader.text = object.header
            lblDescription.text = object.description
            
        }
    }
}
