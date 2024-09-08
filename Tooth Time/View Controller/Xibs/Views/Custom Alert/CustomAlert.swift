//
//  CustomAlertViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 08/09/2024.
//

import UIKit

class CustomAlert: UIView {
    
    @IBOutlet weak var contentView: UIView!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        configureXib()
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        configureXib()
    }
    
    //MARK: - Configurations
    private func configureXib(){
        Bundle.main.loadNibNamed("CustomAlert", owner: self, options: [:])
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        contentView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        contentView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        contentView.layoutIfNeeded()
        
    }
}
