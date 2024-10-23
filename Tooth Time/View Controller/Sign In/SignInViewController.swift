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
        vc.pop()
    }
    
    @objc func navigateToHome() {
        setRoot()
    }
}

//MARK: - Configurations
private extension SignInViewController {
    func setupView() {
        customButtonSignIn()
        self.isHidNavigation = true
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

//MARK: - Set Root
extension SignInViewController {
    func setRoot() {
        let vc = MainTabBarViewController.instantiat()
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let sceneDelegate = windowScene.delegate as? SceneDelegate,
           let window = sceneDelegate.window {
            window.rootViewController = vc
            window.makeKeyAndVisible()
            
            if window.rootViewController is MainTabBarViewController {
                print("Successfully set MainTabBarViewController as root!")
            } else {
                print("Failed to set MainTabBarViewController as root.")
            }
        }
    }
}
