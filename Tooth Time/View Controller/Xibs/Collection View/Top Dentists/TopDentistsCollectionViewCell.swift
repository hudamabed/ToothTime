//
//  TopDentistsCollectionViewCell.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 20/08/2024.
//

import UIKit

class TopDentistsCollectionViewCell: UICollectionViewCell {
    
    //MARK: Outlet
    @IBOutlet weak var imgDoctor: UIImageView!
    @IBOutlet weak var lblDoctorName: UILabel!
    @IBOutlet weak var lblSpecialty: UILabel!
    @IBOutlet weak var imgHeart: UIImageView!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblReview: UILabel!
    @IBOutlet weak var imgStar: UIImageView!
    @IBOutlet weak var stackView: UIStackView!
    
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupShadow()
    }

    private func setupShadow() {
        contentView.layer.shadowColor = UIColor.black.cgColor
        contentView.layer.shadowOffset = CGSize(width: 0, height: 2)
        contentView.layer.shadowOpacity = 0.3
        contentView.layer.shadowRadius = 4

        contentView.layer.masksToBounds = false
        contentView.clipsToBounds = true
        
        contentView.layer.cornerRadius = 12
    }

    
    //MARK: - Configurations
    func configureCell(isDetailsPage: Bool = false) {
        if let object = self.object as? TopDentists {
            imgDoctor.image = UIImage(named: object.image ?? "")
            imgStar.image = UIImage(named: object.star ?? "")
            imgHeart.image = UIImage(named: object.heart ?? "")
            lblRating.text = String(object.rating ?? 0.0)
            lblReview.text = object.formattedReview
            lblLocation.text = object.location
            lblSpecialty.text = object.specialty
            lblDoctorName.text = object.drName
            
            if isDetailsPage {
                imgHeart.isHidden = true
                lblRating.isHidden = true
                lblReview.isHidden = true
                imgStar.isHidden = true
                stackView.layoutMargins.top = 12
                stackView.layoutMargins.bottom = 12
                stackView.isLayoutMarginsRelativeArrangement = true
            }
        }
    }
}
