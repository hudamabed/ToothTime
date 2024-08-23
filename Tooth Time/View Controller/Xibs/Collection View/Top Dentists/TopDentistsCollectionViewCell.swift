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
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //MARK: - Configurations
    func configureCell() {
        if let object = self.object as? TopDentists {
            imgDoctor.image = UIImage(named: object.image ?? "")
            imgStar.image = UIImage(named: object.star ?? "")
            imgHeart.image = UIImage(named: object.heart ?? "")
            lblRating.text =  String(Float(object.rating ?? 0.0))
            lblReview.text = String(Float(object.review ?? 0.0))
            lblLocation.text = object.location
            lblSpecialty.text = object.specialty
            lblDoctorName.text = object.drName
            
        }
    }
}
