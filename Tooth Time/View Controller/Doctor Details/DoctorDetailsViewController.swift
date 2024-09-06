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
    @IBOutlet weak var reviewsTableView: UITableView!
    @IBOutlet weak var btnBookAppointment: CustomButton!
    
    
    var doctor: TopDentists?
    var doctorDetails = [TopDentists]()
    var review = [Review]()


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
    
    @objc func navigateToBookAppointment() {
        let vc = BookAppointmentViewController.instantiat()
            vc.push()
    }
}
//MARK: - Configurations
private extension DoctorDetailsViewController {
    func setupView() {
        setUpNavigation()
        doctorDetailsCollectionView.registerXib(cell: TopDentistsCollectionViewCell.self)
        reviewsTableView.registerXib(cell: ReviewsTableViewCell.self)
        customButtonBookAppointment()
    }
    
    func localized() {
        if let selectedDoctor = doctor {
            doctorDetails.append(selectedDoctor)
        }
        doctorDetailsCollectionView.reloadData()

    }
    
    func setupData() {
        review.append(Review(imgProfile: "imgProfile", name: "Adil Aijaz", rating: 5.0, star: "icStars", comment: "He is a true professional who genuinely cares about his patients. I highly recommend Dr. Patel to anyone seeking exceptional cardiac care."))
        
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

//MARK: - Set Up Table View
extension DoctorDetailsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return review.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ReviewsTableViewCell = tableView.dequeueReusableCell(withIdentifier: ReviewsTableViewCell.id, for: indexPath) as! ReviewsTableViewCell
        let object = review[indexPath.row]
        cell.object = object
        cell.configureCell()
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

//MARK: - Set Up Custom Button
extension DoctorDetailsViewController {
    func customButtonBookAppointment() {
        btnBookAppointment.btn.addTarget(self, action: #selector(navigateToBookAppointment), for: .touchUpInside)
    }
}
