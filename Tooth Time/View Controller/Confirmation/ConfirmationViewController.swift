//
//  ConfirmationViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 08/09/2024.
//
import UIKit

class ConfirmationViewController: UIViewController {
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
private extension ConfirmationViewController {
    func setupView() {
        setUpNavigation()
    }
    
    func localized() {
        
    }
    
    func setupData() {
        
    }
    
    func fetchData() {
    }
}

//MARK: - Set Up Navigations
extension ConfirmationViewController {
    func setUpNavigation() {
        self.isHidNavigation = true
    }
}
