//
//  CustomButton.swift
//  Foodybite
//
//  Created by Huda M. A'abed on 02/05/2024.
//

import UIKit

class CustomButton: UIView {
    
    //MARK:  Outlets
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var btn: UIButton!
    
    //MARK: - Inspectable
    @IBInspectable var Title: String? {
        set {
            self.btn.setTitle(newValue, for: .normal)
        }
        get {
            return btn.titleLabel?.text
        }
    }
    
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
        Bundle.main.loadNibNamed("CustomButton", owner: self, options: [:])
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        contentView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        contentView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        contentView.layoutIfNeeded()
        
        btn.titleLabel?.font = UIFont(name: "Inter-Medium", size: 16)
        
    }
}
