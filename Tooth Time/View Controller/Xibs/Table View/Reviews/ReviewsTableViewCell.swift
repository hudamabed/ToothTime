//
//  ReviewsTableViewCell.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 05/09/2024.
//

import UIKit

class ReviewsTableViewCell: UITableViewCell {
    
    //MARK: Outlet
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var imgRating: UIImageView!
    @IBOutlet weak var lblComment: UILabel!
    
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //MARK: - Configurations
    func configureCell() {
        if let object = self.object as? Review {
            imgRating.image = UIImage(named: object.star ?? "")
            imgProfile.image = UIImage(named: object.imgProfile ?? "")
            lblName.text = object.name
            lblRating.text = String(Float(object.rating ?? 0.0))
            lblComment.text = object.comment
        }
    }
}
