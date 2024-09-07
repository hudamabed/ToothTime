//
//  SignInViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 15/08/2024.
//

import UIKit

class SignInViewController: UIViewController {
    //MARK:  Outlets
    @IBOutlet weak var btnSignIn: CustomButton!
    
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
    @IBAction func btnSignUp(_ sender: Any) {
        let vc = SignUpViewController.instantiat()
            vc.push()
    }
    
    @objc func navigateToHome() {
        let vc = MainTabBarViewController.instantiat()
        vc.push()
    }
}

//MARK: - Configurations
private extension SignInViewController {
    func setupView() {
        customButtonSignIn()
    }
    
    func localized() {
        setupFont()
    }
    
    func setupData() {

    }
    
    func fetchData() {
    }
}

//MARK: - Set Up FONTS
extension SignInViewController {
    func setupFont() {
        btnSignIn.btn.titleLabel?.font = UIFont(name: "Inter-Medium", size: 16)
        
    }
}

//MARK: - Set Up Custom Button
extension SignInViewController {
    func customButtonSignIn() {
        btnSignIn.btn.addTarget(self, action: #selector(navigateToHome), for: .touchUpInside)
    }
}
