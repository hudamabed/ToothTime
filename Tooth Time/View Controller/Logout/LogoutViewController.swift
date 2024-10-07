//
//  LogoutViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 07/10/2024.
//

import UIKit

class LogoutViewController: UIViewController {
    //MARK:  Outlets
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var btnCancel: CustomButton!
    @IBOutlet weak var btnLogout: CustomButton!
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
        localized()
        fetchData()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    //MARK: - Actions
    @objc func navigateToProfileSettings() {
        self.dismiss(animated: true, completion: nil)
    }
    @objc func navigateToSignIn() {
        let vc = SignInViewController.instantiat()
            vc.push()
    }
    
}
//MARK: - Configurations
private extension LogoutViewController {
    func setupView() {
        setCornerRadius()
        customButtons()
    }
    
    func localized() {
        
    }
    
    func setupData() {
        
    }
    
    func fetchData() {
    }
}

//MARK: - View Corner Radius
extension LogoutViewController {
    func setCornerRadius() {
        contentView.roundCorners(isTopLeft: true, isTopRight: true, isBottomLeft: false, isBottomRight: false, radius: 34)
    }
}

//MARK: - Set Up Actions
extension LogoutViewController {
    func customButtons() {
        btnCancel.btn.addTarget(self, action: #selector(navigateToProfileSettings), for: .touchUpInside)
        btnLogout.btn.addTarget(self, action: #selector(navigateToSignIn), for: .touchUpInside)
    }
}



