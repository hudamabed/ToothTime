//
//  ViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 12/08/2024.
//


import UIKit

class MainNanigationViewController: UINavigationController  {
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
private extension MainNanigationViewController {
    func setupView(){
        AppDelegate.shared?.rootNavigationController = self
        setRoot()
    }
}

func localized(){
    
    
}

func setupData(){
    
}

func fetchData(){
}

//MARK: - Set Root
extension MainNanigationViewController {
    func setRoot(){
        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier:"LoginViewController")
        vc.rootPush()
        
        
    }
}


