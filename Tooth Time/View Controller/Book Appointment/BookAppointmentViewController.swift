//
//  BookAppointmentViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 15/08/2024.
//

import UIKit

class BookAppointmentViewController: UIViewController {
    //MARK:  Outlets
    @IBOutlet weak var btnConfirm: CustomButton!
    
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
//    @objc func navigateToSelectTime() {
//        let vc = 
//    }
}

//MARK: - Configurations
private extension BookAppointmentViewController {
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

extension BookAppointmentViewController {
    
}

//MARK: - Set Up Navigations
extension BookAppointmentViewController {
    func setUpNavigation() {
        let titleTextAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: "Inter18pt-SemiBold", size: 20) as Any,
               .foregroundColor: "374151".color_
           ]
           navigationController?.navigationBar.titleTextAttributes = titleTextAttributes
        self.isHidNavigation = false
    }
}
//MARK: - Set Up Custom Button
//extension BookAppointmentViewController {
//    func customButtonConfirm() {
//        btnConfirm.btn.addTarget(self, action: #selector(navigateToSelectTime), for: .touchUpInside)
//    }
//}
