
//
//  ProfileSettingsTableViewCell.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 07/10/2024.
//


import UIKit

class ProfileSettingsTableViewCell: UITableViewCell {
    //MARK: Outlet
    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var lblProfileSettings: UILabel!
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //MARK: - Configurations
    func configureCell() {
        if let object = self.object as? GlobalConstants.ProfileSettings {
            imgIcon.image = UIImage(named: object.image)
            lblProfileSettings.text = object.name
        }
    }
}

