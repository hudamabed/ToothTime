//
//  FindDoctorsViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 15/08/2024.
//

import UIKit

class FindDoctorsViewController: UIViewController {
    //MARK:  Outlets
    @IBOutlet weak var topDentistsCollectionView: UICollectionView!
    @IBOutlet weak var btnAll: UIButton!
    @IBOutlet weak var btnGeneral: UIButton!
    @IBOutlet weak var btnOrthodontics: UIButton!
    
    @IBOutlet weak var btnSurgery: UIButton!
    @IBOutlet weak var lblAll: UILabel!
    @IBOutlet weak var lblGeneral: UILabel!
    @IBOutlet weak var lblOrthodontics: UILabel!
    @IBOutlet weak var lblSurgery: UILabel!
    
    var topDentists = [TopDentists]()
    var currentSpecialization: Specialization = .all
    
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
        updateSpecialization(to: .all)
        
    }
    
//MARK: - Actions
    @IBAction func btnBack(_ sender: Any) {
        let vc = HomeViewController.instantiat()
        vc.pop()
    }
    
    @IBAction func btnAll(_ sender: Any) {
        updateSpecialization(to: .all)
    }
    
    @IBAction func btnGeneral(_ sender: Any) {
        updateSpecialization(to: .general)
    }
    
    @IBAction func btnOrthodontics(_ sender: Any) {
        updateSpecialization(to: .orthodontics)
    }
    
    @IBAction func btnSurgery(_ sender: Any) {
        updateSpecialization(to: .surgery)
    }
    
    @IBAction func btnDetails(_ sender: Any) {
        let vc = DoctorDetailsViewController.instantiat()
        vc.pop()
    }
}

//MARK: - Configurations
private extension FindDoctorsViewController {
    func setupView() {
        setUpNavigation()
        topDentistsCollectionView.registerXib(cell: TopDentistsCollectionViewCell.self)
    }
    
    func localized() {
        
    }
    
    func setupData() {
        topDentists.append(TopDentists(drName: "Dr. David Lee", image: "imgDr1", heart: "icLike", specialty: "Pediatrics", location: "450 Smile, Springfield, IL", star: "icRating", rating: 1, review: 87233))
        topDentists.append(TopDentists(drName: "Dr. Areesha Noman", image: "imgDr2", heart: "icLike", specialty: "Orthodontics", location: "32 Braces Blvd, Austin, TX", star: "icRating", rating: 3, review: 87255))
        topDentists.append(TopDentists(drName: "Dr. Michael Johnson", image: "imgDr3", heart: "icLike", specialty: "Surgery", location: "178 Gum Road, Miami, FL", star: "icRating", rating: 4.5, review: 87244))
        topDentists.append(TopDentists(drName: "Dr. Emily Walker", image: "imgDr4", heart: "icLike", specialty: "Pediatrics", location: "Serenity Pediatrics Clinic", star: "icRating", rating: 5, review: 872))
        topDentists.append(TopDentists(drName: "Dr. Emily Walker", image: "imgDr5", heart: "icLike", specialty: "Pediatrics", location: "Serenity Pediatrics Clinic", star: "icRating", rating: 5, review: 872))
        
        
    }
    
    func fetchData() {
    }
}

//MARK: - Set Up Collection View
extension FindDoctorsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch currentSpecialization {
        case .all:
            return topDentists.count
        case .general:
            return topDentists.filter { $0.specialty == "General"}.count
        case .orthodontics:
            return topDentists.filter { $0.specialty == "Orthodontics"}.count
        case .surgery:
            return topDentists.filter { $0.specialty == "Surgery"}.count
        }
            
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell: TopDentistsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopDentistsCollectionViewCell", for: indexPath) as! TopDentistsCollectionViewCell
            let filteredDentists: [TopDentists]
                switch currentSpecialization {
                case .all:
                    filteredDentists = topDentists
                case .general:
                    filteredDentists = topDentists.filter { $0.specialty == "General" }
                case .orthodontics:
                    filteredDentists = topDentists.filter { $0.specialty == "Orthodontics" }
                case .surgery:
                    filteredDentists = topDentists.filter { $0.specialty == "Surgery" }}
            let object = filteredDentists[indexPath.row]
            cell.object = object
            cell.configureCell(isDetailsPage: false)
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedDoctor = topDentists[indexPath.row]
        let vc = DoctorDetailsViewController.instantiat()
        vc.doctor = selectedDoctor
        vc.push()
    }
}


//MARK: - Set Up Navigations
extension FindDoctorsViewController {
    func setUpNavigation() {
        let titleTextAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: "Inter18pt-SemiBold", size: 20) as Any,
               .foregroundColor: "374151".color_
           ]
           navigationController?.navigationBar.titleTextAttributes = titleTextAttributes
        self.isHidNavigation = false
    }
}

//MARK: - Specialization
extension FindDoctorsViewController {
    func updateSpecialization(to specialization: Specialization) {
        currentSpecialization = specialization
        switch currentSpecialization {
        case .all:
            btnAll.backgroundColor = "1C2A3A".color_
            btnGeneral.backgroundColor = "FFFFFF".color_
            btnOrthodontics.backgroundColor = "FFFFFF".color_
            btnSurgery.backgroundColor = "FFFFFF".color_
            
            lblAll.textColor = "FFFFFF".color_
            lblGeneral.textColor = "1C2A3A".color_
            lblSurgery.textColor = "1C2A3A".color_
            lblOrthodontics.textColor = "1C2A3A".color_

        case .general:
            btnGeneral.backgroundColor = "1C2A3A".color_
            btnAll.backgroundColor = "FFFFFF".color_
            btnOrthodontics.backgroundColor = "FFFFFF".color_
            btnSurgery.backgroundColor = "FFFFFF".color_
            
            lblAll.textColor = "1C2A3A".color_
            lblGeneral.textColor = "FFFFFF".color_
            lblSurgery.textColor = "1C2A3A".color_
            lblOrthodontics.textColor = "1C2A3A".color_
            
        case .orthodontics:
            btnGeneral.backgroundColor = "FFFFFF".color_
            btnAll.backgroundColor = "FFFFFF".color_
            btnOrthodontics.backgroundColor = "1C2A3A".color_
            btnSurgery.backgroundColor = "FFFFFF".color_
            
            lblAll.textColor = "1C2A3A".color_
            lblGeneral.textColor = "1C2A3A".color_
            lblOrthodontics.textColor = "FFFFFF".color_
            lblSurgery.textColor = "1C2A3A".color_
                
        case .surgery:
            btnGeneral.backgroundColor = "FFFFFF".color_
            btnAll.backgroundColor = "FFFFFF".color_
            btnOrthodontics.backgroundColor = "FFFFFF".color_
            btnSurgery.backgroundColor = "1C2A3A".color_
            
            lblAll.textColor = "1C2A3A".color_
            lblGeneral.textColor = "1C2A3A".color_
            lblOrthodontics.textColor = "1C2A3A".color_
            lblSurgery.textColor = "FFFFFF".color_
        }
        topDentistsCollectionView.reloadData()
    }
}

