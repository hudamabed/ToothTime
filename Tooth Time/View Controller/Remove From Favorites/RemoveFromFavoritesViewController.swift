//
//  RemoveFromFavoritesViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 15/10/2024.
//

import UIKit

class RemoveFromFavoritesViewController: UIViewController {
    //MARK:  Outlets
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var btnCancel: CustomButton!
    @IBOutlet weak var btnRemove: CustomButton!
    
    var doctor: TopDentists?
    var hospital: MedicalCenters?
    var topDentists = [TopDentists]()
    var medicalCenters = [MedicalCenters]()
    
    
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
    @objc func navigateToFavorites() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func updateFavorites() {
        if let selectedDoctor = doctor, let index = topDentists.firstIndex(where: { $0.id == selectedDoctor.id } ) {
            topDentists.remove(at: index)
        } else if let selectedHospital = hospital, let index = medicalCenters.firstIndex(where: { $0.id == selectedHospital.id } ) {
            medicalCenters.remove(at: index)
        }
        collectionView.reloadData()
        self.dismiss(animated: true, completion: nil)
    }
}
//MARK: - Configurations
private extension RemoveFromFavoritesViewController {
    func setupView() {
        setCornerRadius()
        customButtons()
        collectionView.registerXib(cell: TopDentistsCollectionViewCell.self)
        collectionView.registerXib(cell: MedicalCentersCollectionViewCell.self)
    }
    
    func localized() {
        if let selectedDoctor = doctor {
            topDentists.append(selectedDoctor)
        } else if let selectedHospital = hospital {
            medicalCenters.append(selectedHospital)
        }
        collectionView.reloadData()
        
    }
    
    func setupData() {
        
    }
    
    func fetchData() {
    }
}

//MARK: - Set Up Collection View
extension RemoveFromFavoritesViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if doctor != nil {
            return topDentists.count
        } else {
            return medicalCenters.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if doctor != nil {
            let cell: TopDentistsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopDentistsCollectionViewCell", for: indexPath) as! TopDentistsCollectionViewCell
            let object = topDentists[indexPath.row]
            cell.object = object
            cell.configureCell(isDetailsPage: false)
            return cell
        } else {
            let cell: MedicalCentersCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MedicalCentersCollectionViewCell", for: indexPath) as! MedicalCentersCollectionViewCell
            let object = medicalCenters[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
        }
    }
}

//MARK: - View Corner Radius
extension RemoveFromFavoritesViewController {
    func setCornerRadius() {
        contentView.roundCorners(isTopLeft: true, isTopRight: true, isBottomLeft: false, isBottomRight: false, radius: 34)
    }
}

//MARK: - Set Up Actions
extension RemoveFromFavoritesViewController {
    func customButtons() {
        btnCancel.btn.addTarget(self, action: #selector(navigateToFavorites), for: .touchUpInside)
        btnRemove.btn.addTarget(self, action: #selector(updateFavorites), for: .touchUpInside)
    }
}

