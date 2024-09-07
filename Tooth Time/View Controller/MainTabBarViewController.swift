//
//  TabBarViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 07/09/2024.
//

import UIKit

class MainTabBarViewController: UITabBarController {
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
}
//MARK: - Configurations
private extension MainTabBarViewController {
    func setupView() {
        
    }
    
    func localized() {
        
    }
    
    func setupData() {
        
    }
    
    func fetchData() {
    }
}

extension MainTabBarViewController {
    
}

