//
//  FavoriteViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 08/10/2024.
//

import UIKit

class FavoriteViewController: UIViewController {
    //MARK:  Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var lblDoctor: UILabel!
    @IBOutlet weak var lblHospitals: UILabel!
    
    @IBOutlet weak var btnDoctor: UIButton!
    @IBOutlet weak var btnHospital: UIButton!

    @IBOutlet weak var viewLine1: UIView!
    @IBOutlet weak var viewLine2: UIView!
    
    var topDentists = [TopDentists]()
    var medicalCenters = [MedicalCenters]()
    var currentFavorite: GlobalConstants.Favorite = .doctor
    
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
        updateFavorite(to: .doctor)
    }
    
    
    //MARK: - Actions
    @IBAction func btnDoctor(_ sender: Any) {
        currentFavorite = .doctor
        updateFavorite(to: .doctor)
    }
    
    @IBAction func btnHospital(_ sender: Any) {
        currentFavorite = .hospital
        updateFavorite(to: .hospital)
    }
    
    @IBAction func btnBack(_ sender: Any) {
        let vc = ProfileViewController.instantiat()
        vc.pop()
    }
}

//MARK: - Configurations
private extension FavoriteViewController {
    func setupView() {
        collectionView.registerXib(cell: TopDentistsCollectionViewCell.self)
        collectionView.registerXib(cell: MedicalCentersCollectionViewCell.self)
        setUpNavigation()
        
    }
    
    func localized() {
        
    }
    
    func setupData() {
        
        topDentists.append(TopDentists(id: 1, drName: "Dr. David Lee", image: "imgDr1", heart: "icFillHeart", specialty: "Pediatrics", location: "450 Smile, Springfield, IL", star: "icRating", rating: 1, review: 87233))
        topDentists.append(TopDentists(id: 2, drName: "Dr. Areesha Noman", image: "imgDr2", heart: "icFillHeart", specialty: "Orthodontics", location: "32 Braces Blvd, Austin, TX", star: "icRating", rating: 3, review: 87255))
        topDentists.append(TopDentists(id: 3, drName: "Dr. Michael Johnson", image: "imgDr3", heart: "icFillHeart", specialty: "Surgery", location: "178 Gum Road, Miami, FL", star: "icRating", rating: 4.5, review: 87244))
        topDentists.append(TopDentists(id: 4, drName: "Dr. Emily Walker", image: "imgDr4", heart: "icFillHeart", specialty: "Pediatrics", location: "Serenity Pediatrics Clinic", star: "icRating", rating: 5, review: 872))
        topDentists.append(TopDentists(id: 5, drName: "Dr. Emily Walker", image: "imgDr5", heart: "icFillHeart", specialty: "Pediatrics", location: "Serenity Pediatrics Clinic", star: "icRating", rating: 5, review: 872))
        
        medicalCenters.append(MedicalCenters.init(id: 1, image: "hospital1", centerName: "Smile & Shine Clinic", location: "123 Oak Street, CA 98765", rating: 5.0, distance: "2.5 km/40 min", review: 58, type: "Hospital"))
        
        medicalCenters.append(MedicalCenters.init(id: 2, image: "hospital2", centerName: "Golden Dentistry Center", location: "555 Bridge Street, Golden Gate", rating: 4.9, distance: "2.5 km/40 min", review: 508, type: "Clinic"))
        
    }
    
    func fetchData() {
        
    }
}

//MARK: - Set Up Collection View
extension FavoriteViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch currentFavorite {
        case .doctor:
            return topDentists.count
        case .hospital:
            return medicalCenters.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch currentFavorite {
            case .doctor:
            let cell: TopDentistsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopDentistsCollectionViewCell", for: indexPath) as! TopDentistsCollectionViewCell
            let object = topDentists[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
            case .hospital:
            let cell: MedicalCentersCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MedicalCentersCollectionViewCell", for: indexPath) as! MedicalCentersCollectionViewCell
            let object = medicalCenters[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch currentFavorite {
        case .doctor:
            let selectedDoctor = topDentists[indexPath.row]
            let vc = RemoveFromFavoritesViewController.instantiat()
            vc.doctor = selectedDoctor
            vc.modalPresentationStyle = .fullScreen
            vc.presenVC()
        case .hospital:
            let selectedDoctor = medicalCenters[indexPath.row]
            let vc = RemoveFromFavoritesViewController.instantiat()
            vc.hospital = selectedDoctor
            vc.modalPresentationStyle = .fullScreen
            vc.presenVC()
        }
    }
}




//MARK: - Favorite
extension FavoriteViewController {
    func updateFavorite(to favorite: GlobalConstants.Favorite) {
        self.collectionView.reloadData()
        currentFavorite = favorite
        switch currentFavorite {
        case .doctor:
            lblDoctor.textColor = "1C2A3A".color_
            lblHospitals.textColor = "9CA3AF".color_
            
            viewLine1.isHidden = false
            viewLine2.isHidden = true
            viewLine1.roundCorners(isTopLeft: true, isTopRight: true, isBottomLeft: false, isBottomRight: false, radius: 3)
            
        case .hospital:
            lblDoctor.textColor = "9CA3AF".color_
            lblHospitals.textColor = "1C2A3A".color_
            
            viewLine1.isHidden = true
            viewLine2.isHidden = false
            viewLine2.roundCorners(isTopLeft: true, isTopRight: true, isBottomLeft: false, isBottomRight: false, radius: 3)
        }
    }
}
//MARK: - Set Up Navigations
extension FavoriteViewController {
    func setUpNavigation() {
        let titleTextAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: "Inter18pt-SemiBold", size: 20) as Any,
            .foregroundColor: "374151".color_
        ]
        navigationController?.navigationBar.titleTextAttributes = titleTextAttributes
        self.isHidNavigation = false
    }
}
