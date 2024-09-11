//
//  MyBookingsCollectionViewCell.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 10/09/2024.
//

import UIKit

class MyBookingsCollectionViewCell: UICollectionViewCell {
    //MARK: Outlet
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblDoctorName: UILabel!
    @IBOutlet weak var imgDoctor: UIImageView!
    @IBOutlet weak var lblSpecialty: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //MARK: - Configurations
    func configureCell() {
        if let object = self.object as? Bookings {
            lblDate.text = object.date
            lblDoctorName.text = object.drName
            lblLocation.text = object.location
            lblSpecialty.text = object.specialty
            imgDoctor.image = UIImage(named: object.image ?? "")
        }
    }
}
