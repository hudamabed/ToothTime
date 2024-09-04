//
//  DoctorDetailsViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 15/08/2024.
//

import UIKit

class DoctorDetailsViewController: UIViewController {
    
    //MARK:  Outlets
    @IBOutlet weak var doctorDetailsCollectionView: UICollectionView!
    
    var doctor: TopDentists?
    var doctorDetails = [TopDentists]()


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
        @IBAction func btnBack(_ sender: Any) {
            let vc = HomeViewController.instantiat()
            vc.pop()
        }
}
//MARK: - Configurations
private extension DoctorDetailsViewController {
    func setupView() {
        setUpNavigation()
        doctorDetailsCollectionView.registerXib(cell: TopDentistsCollectionViewCell.self)

    }
    
    func localized() {
        if let selectedDoctor = doctor {
            doctorDetails.append(selectedDoctor)
        }
        doctorDetailsCollectionView.reloadData()

    }
    
    func setupData() {
        
    }
    
    func fetchData() {
    }
    
}

//MARK: - Set Up Collection View
extension DoctorDetailsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return doctorDetails.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: TopDentistsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopDentistsCollectionViewCell", for: indexPath) as! TopDentistsCollectionViewCell
        let object = doctorDetails[indexPath.row]
        cell.object = object
        cell.configureCell(isDetailsPage: true)
        return cell  
    }
    
}

//MARK: - Set Up Navigations
extension DoctorDetailsViewController {
    func setUpNavigation() {
        let titleTextAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: "Inter18pt-SemiBold", size: 20) as Any,
               .foregroundColor: "374151".color_
           ]
           navigationController?.navigationBar.titleTextAttributes = titleTextAttributes
        self.isHidNavigation = false
    }
}
