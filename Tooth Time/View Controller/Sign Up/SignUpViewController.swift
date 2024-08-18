//
//  SignUpViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 15/08/2024.
//

import UIKit

class SignUpViewController: UIViewController {
    //MARK:  Outlets
    
    
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
    @IBAction func btnSignIn(_ sender: Any) {
        let vc = SignInViewController.instantiat()
        vc.push()
    }
}
//MARK: - Configurations
private extension SignUpViewController {
    func setupView() {
        isHidNavigation = true
        
    }
    
    func localized() {
        
    }
    
    func setupData() {
        
    }
    
    func fetchData() {
    }
}

//MARK: - Set Up No
extension SignUpViewController {
    
}

