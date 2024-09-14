//
//  CustomTextFiled.swift
//  Foodybite
//
//  Created by Huda M. A'abed on 02/05/2024.
//

import UIKit

class CustomTextFiled: UIView {
    
    //MARK:  Outlets
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var imgEmail: UIImageView!
    @IBOutlet weak var txtFiled: UITextField!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    //MARK: - Inspectable
    @IBInspectable var Icon: UIImage? {
        set {
            imgEmail.image = newValue
        }
        get {
            return imgEmail.image
        }
    }
    
    @IBInspectable var Placeholder: String? {
        set {
            self.txtFiled.placeholder = newValue
        }
        get {
            return txtFiled.placeholder
        }
    }

    
    @IBInspectable override var backgroundColor: UIColor? {
        set {
            self.contentView?.backgroundColor = newValue
            
        }
        get {
            return contentView?.backgroundColor
            
        }
    }
    
    @IBInspectable var placeHolderColor: UIColor? {
        set {
            txtFiled?.placeHolderColor = newValue
        }
        get {
            return txtFiled?.placeHolderColor
        }
    }
    
    @IBInspectable override var borderColor: UIColor {
        set {
            self.contentView.borderColor = newValue
        }
        get {
            return contentView.borderColor
            
        }
    }
    
    @IBInspectable override var borderWidth: CGFloat {
        set {
            self.contentView.borderWidth = newValue
        }
        get {
            return contentView.borderWidth
            
        }
    }
    
    var keyboredType: UIKeyboardType = .default {
        didSet {
            txtFiled.keyboardType = keyboredType
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
        Bundle.main.loadNibNamed("CustomTextFiled", owner: self, options: [:])
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        contentView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        contentView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        contentView.layoutIfNeeded()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        self.addGestureRecognizer(tapGesture)
    }
    
    @objc private func handleTap() {
        txtFiled.becomeFirstResponder() 
    }
    
}
