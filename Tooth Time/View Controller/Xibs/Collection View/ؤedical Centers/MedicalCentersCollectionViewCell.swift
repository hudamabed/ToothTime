//
//  MedicalCentersCollectionViewCell.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 20/08/2024.
//

import UIKit

class MedicalCentersCollectionViewCell: UICollectionViewCell {
    
    //MARK: Outlet
    @IBOutlet weak var imgHospital: UIImageView!
    @IBOutlet weak var lblHospitalName: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblReviews: UILabel!
    @IBOutlet weak var lblDistance: UILabel!
    @IBOutlet weak var lblType: UILabel!
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //MARK: - Configurations
    func configureCell() {
        if let object = self.object as? MedicalCenters {
            imgHospital.image = UIImage(named: object.image ?? "")
            lblHospitalName.text = object.centerName
            lblLocation.text = object.location
            lblRating.text = String(Float(object.rating ?? 0.0))
            lblReviews.text = object.formattedReview
            lblDistance.text = object.distance
            lblType.text = object.type
        }
    }
}
