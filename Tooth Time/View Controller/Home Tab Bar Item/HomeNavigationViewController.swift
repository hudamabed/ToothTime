//
//  HomeViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 23/10/2024.
//

import UIKit

class HomeNavigationViewController: UINavigationController  {
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
private extension HomeNavigationViewController {
    func setupView() {
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
extension HomeNavigationViewController {
    func setRoot() {
        let vc = HomeViewController.instantiat()
        vc.rootPush()
    }
}
