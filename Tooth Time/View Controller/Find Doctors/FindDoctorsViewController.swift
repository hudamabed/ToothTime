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
    
//MARK: - Actions
    @IBAction func btnBack(_ sender: Any) {
        let vc = HomeViewController.instantiat()
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
        topDentists.append(TopDentists(drName: "Dr. David Lee", image: "imgDr1", heart: "icLike", specialty: "Pediatric Dentistry", location: "450 Smile, Springfield, IL", star: "icRating", rating: 1, review: 87233))
        topDentists.append(TopDentists(drName: "Dr. Areesha Noman", image: "imgDr2", heart: "icLike", specialty: "Orthodontics", location: "32 Braces Blvd, Austin, TX", star: "icRating", rating: 3, review: 87255))
        topDentists.append(TopDentists(drName: "Dr. Michael Johnson", image: "imgDr3", heart: "icLike", specialty: "Orthopedic Surgery", location: "178 Gum Road, Miami, FL", star: "icRating", rating: 4.5, review: 87244))
        topDentists.append(TopDentists(drName: "Dr. Emily Walker", image: "imgDr4", heart: "icLike", specialty: "Pediatrics", location: "Serenity Pediatrics Clinic", star: "icRating", rating: 5, review: 872))
        
    }
    
    func fetchData() {
    }
}

//MARK: - Set Up Collection View
extension FindDoctorsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return topDentists.count
        }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell: TopDentistsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopDentistsCollectionViewCell", for: indexPath) as! TopDentistsCollectionViewCell
            let object = topDentists[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
    }
}


//MARK: - Set Up Navigations
extension FindDoctorsViewController {
    func setUpNavigation() {
        let titleTextAttributes: [NSAttributedString.Key: Any] = [
               .font: UIFont(name: "Inter-SemiBold", size: 20)!,
               .foregroundColor: "374151".color_
           ]
           navigationController?.navigationBar.titleTextAttributes = titleTextAttributes
        self.isHidNavigation = false
    }
}

