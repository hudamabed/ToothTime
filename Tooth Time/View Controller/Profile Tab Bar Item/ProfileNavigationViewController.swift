//
//  ProfileNavigationViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 23/10/2024.
//

import UIKit

class ProfileNavigationViewController: UINavigationController  {
    //MARK: Life Cycle
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
}
//MARK: - Configurations
private extension ProfileNavigationViewController {
    func setupView(){
        AppDelegate.shared?.rootNavigationController = self
        setRoot()
        navigationBar.isTranslucent = true
    }
    
    func localized() {
        
    }
    
    func setupData() {
        
    }
    
    func fetchData() {
        
    }
}

//MARK: - Set Root
extension ProfileNavigationViewController {
    func setRoot(){
        let vc = ProfileViewController.instantiat()
        vc.rootPush()
    }
}
