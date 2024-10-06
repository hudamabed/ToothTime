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
        setUpNavigation()
        
    }
//MARK: - Actions
    @IBAction func btnFindDoctor(_ sender: Any) {
        let vc = FindDoctorsViewController.instantiat()
        vc.push()
    }
}
//MARK: - Configurations
private extension HomeViewController {
    func setupView() {
        AdBoardCollectionView.registerXib(cell: AdBoardCollectionViewCell.self)
        medicalCentersCollectionView.registerXib(cell: MedicalCentersCollectionViewCell.self)
        topDentistsCollectionView.registerXib(cell: TopDentistsCollectionViewCell.self)
    }
    
    func localized() {
//        for familyName in UIFont.familyNames {
//            print("Family: \(familyName)")
//            for fontName in UIFont.fontNames(forFamilyName: familyName) {
//                print("Font: \(fontName)")
//            }
//        }
    }
    
    func setupData() {
        adBoard.append(AdBoard.init(image: "adImage", header: "Looking for\nSpecialist Dentist?", description: "Schedule an appointment with\nour top doctors."))
        adBoard.append(AdBoard.init(image: "adImage", header: "Looking for\nSpecialist Dentist?", description: "Schedule an appointment with\nour top doctors."))
        adBoard.append(AdBoard.init(image: "adImage", header: "Looking for\nSpecialist Dentist?", description: "Schedule an appointment with\nour top doctors."))
        
        medicalCenters.append(MedicalCenters.init(image: "hospital1", centerName: "Smile & Shine Clinic", location: "123 Oak Street, CA 98765", rating: 5.0, distance: "2.5 km/40 min", review: 58, type: "Hospital"))
        
        medicalCenters.append(MedicalCenters.init(image: "hospital2", centerName: "Golden Dentistry Center", location: "555 Bridge Street, Golden Gate", rating: 4.9, distance: "2.5 km/40 min", review: 508, type: "Clinic"))
        
        topDentists.append(TopDentists(drName: "Dr. David Lee", image: "imgDr1", heart: "icLike", specialty: "Pediatric Dentistry", location: "450 Smile, Springfield, IL", star: "icRating", rating: 5, review: 87233))
        topDentists.append(TopDentists(drName: "Dr. Areesha Noman", image: "imgDr2", heart: "icLike", specialty: "Orthodontics", location: "32 Braces Blvd, Austin, TX", star: "icRating", rating: 3, review: 87255))
        topDentists.append(TopDentists(drName: "Dr. Michael Johnson", image: "imgDr3", heart: "icLike", specialty: "Orthopedic Surgery", location: "178 Gum Road, Miami, FL", star: "icRating", rating: 4.5, review: 87244))
        topDentists.append(TopDentists(drName: "Dr. Emily Walker", image: "imgDr4", heart: "icLike", specialty: "Pediatrics", location: "Serenity Pediatrics Clinic", star: "icRating", rating: 5, review: 872))
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
            updatePositions(from: indexPath.row, in: cell)
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

//extension HomeViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let screenWidth = collectionView.bounds.width
//        let screenHeight = collectionView.bounds.height
//        
//        let horizontalSpacing: CGFloat = 24
//        let verticalSpacing: CGFloat = 16 
//        
//        let availableWidth = screenWidth - (2 * horizontalSpacing)
//        
//        let cellSize: (width: CGFloat, height: CGFloat)
//        
//        switch collectionView {
//        case AdBoardCollectionView:
//            cellSize = (width: 342, height: 163)
//        case medicalCentersCollectionView:
//            cellSize = (width: 232, height: 252)
//        default:
//            cellSize = (width: 342, height: 133)
//        }
//        
//        let cellWidth = (availableWidth / 390) * cellSize.width
//        let cellHeight = (cellWidth / cellSize.width) * cellSize.height
//        
//        let adjustedHeight = min(screenHeight, cellHeight)
//        
//        return CGSize(width: cellWidth, height: adjustedHeight)
//    }
//}


//MARK: - Set Up Page Control
extension HomeViewController {
    func updatePositions(from index: Int, in cell: AdBoardCollectionViewCell ) {
        switch index {
        case 0:
            cell.stackView.removeArrangedSubview(cell.viewOval)
            cell.stackView.insertArrangedSubview(cell.viewOval, at: 0)
        case 1:
            cell.stackView.removeArrangedSubview(cell.viewOval)
            cell.stackView.insertArrangedSubview(cell.viewOval, at: 1)
        case 2:
            cell.stackView.removeArrangedSubview(cell.viewOval)
            cell.stackView.insertArrangedSubview(cell.viewOval, at: 2)
            
        default:
            break
        }
        
    }
}

//MARK: - Set Up Navigations
extension HomeViewController {
    func setUpNavigation() {
        navigationItem.hidesBackButton = true
        self.isHidNavigation = true
    
    }
}

