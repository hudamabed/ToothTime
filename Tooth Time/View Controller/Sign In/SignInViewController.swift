//
//  SignInViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 15/08/2024.
//

import UIKit

class SignInViewController: UIViewController {
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
    @IBAction func btnSignUp(_ sender: Any) {
            let vc = SignUpViewController.instantiat()
            vc.push()
    }
}
//MARK: - Configurations
private extension SignInViewController {
    func setupView() {
        
    }
    
    func localized() {
        
    }
    
    func setupData() {
        
    }
    
    func fetchData() {
    }
}

extension SignInViewController {
    
}

