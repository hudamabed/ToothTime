//
//  HomeViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 15/08/2024.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK:  Outlets
    @IBOutlet weak var AdBoardCollectionView: UICollectionView!
    @IBOutlet weak var medicalCentersCollectionView: UICollectionView!
    @IBOutlet weak var topDentistsCollectionView: UICollectionView!
    
    var adBoard = [AdBoard]()
    var medicalCenters = [MedicalCenters]()
    var topDentists = [TopDentists]()
    
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
private extension HomeViewController {
    func setupView() {
        isHidNavigation = true
        AdBoardCollectionView.registerXib(cell: AdBoardCollectionViewCell.self)
        medicalCentersCollectionView.registerXib(cell: MedicalCentersCollectionViewCell.self)
        topDentistsCollectionView.registerXib(cell: TopDentistsCollectionViewCell.self)
        
    }
    
    func localized() {
        
    }
    
    func setupData() {
        adBoard.append(AdBoard.init(image: "adImage", header: "Looking for\nSpecialist Dentist?", description: "Schedule an appointment with our top doctors."))
        adBoard.append(AdBoard.init(image: "adImage", header: "Looking for Specialist Dentist?", description: "Schedule an appointment with our top doctors."))
        adBoard.append(AdBoard.init(image: "adImage", header: "Looking for Specialist Dentist?", description: "Schedule an appointment with our top doctors."))
        
        
        topDentists.append(TopDentists(drName: "Dr. David Lee", image: "imgDr1", heart: "icLike", specialty: "Pediatric Dentistry", location: "450 Smile, Springfield, IL", star: "icRating", rating: 1, review: 872.4))
        topDentists.append(TopDentists(drName: "Dr. David Lee", image: "imgDr1", heart: "icLike", specialty: "Pediatric Dentistry", location: "450 Smile, Springfield, IL", star: "icRating", rating: 1, review: 872.4))
        topDentists.append(TopDentists(drName: "Dr. David Lee", image: "imgDr1", heart: "icLike", specialty: "Pediatric Dentistry", location: "450 Smile, Springfield, IL", star: "icRating", rating: 1, review: 872.3))
        topDentists.append(TopDentists(drName: "Dr. David Lee", image: "imgDr1", heart: "icLike", specialty: "Pediatric Dentistry", location: "450 Smile, Springfield, IL", star: "icRating", rating: 1, review: 872.7))
    }
    
    func fetchData() {
        
    }
}
//MARK: - Set Up Collection View
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == AdBoardCollectionView {
            return adBoard.count
        } else if collectionView == medicalCentersCollectionView {
            return medicalCenters.count
        } else {
            return topDentists.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == AdBoardCollectionView {
            let cell: AdBoardCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "AdBoardCollectionViewCell", for: indexPath) as! AdBoardCollectionViewCell
            let object = adBoard[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
        } else if collectionView == medicalCentersCollectionView {
            let cell: MedicalCentersCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MedicalCentersCollectionViewCell", for: indexPath) as! MedicalCentersCollectionViewCell
            let object = medicalCenters[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
        } else {
            let cell: TopDentistsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopDentistsCollectionViewCell", for: indexPath) as! TopDentistsCollectionViewCell
            let object = topDentists[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
        }
    }    
}

