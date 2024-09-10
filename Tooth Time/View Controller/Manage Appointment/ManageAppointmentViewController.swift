//
//  ManageAppointmentViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 10/09/2024.
//

import UIKit

class ManageAppointmentViewController: UIViewController {
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
private extension ManageAppointmentViewController {
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
    extension ManageAppointmentViewController {
        func setUpNavigation() {
            let titleTextAttributes: [NSAttributedString.Key: Any] = [
                .font: UIFont(name: "Inter18pt-SemiBold", size: 20) as Any,
                   .foregroundColor: "374151".color_
               ]
               navigationController?.navigationBar.titleTextAttributes = titleTextAttributes
            self.isHidNavigation = false
        }
    }
