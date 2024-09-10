//
//  ConfirmationViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 08/09/2024.
//
import UIKit

class ConfirmationViewController: UIViewController {
    //MARK:  Outlets
    @IBOutlet weak var customAlert: CustomAlert!
    
    
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
    @objc func navigateToBookAppointment() {
        self.dismiss(animated: true, completion: nil)
    }
}
//MARK: - Configurations
private extension ConfirmationViewController {
    func setupView() {
        setUpNavigation()
        customButtonDone()
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


//MARK: - Set Up Custom Alert
extension ConfirmationViewController {
    func customButtonDone() {
        customAlert.btnDone.btn.addTarget(self, action: #selector(navigateToBookAppointment), for: .touchUpInside)
        customAlert.btnEdit.addTarget(self, action: #selector(navigateToBookAppointment), for: .touchUpInside)
    }
}
