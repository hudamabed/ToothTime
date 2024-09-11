//
//  ManageAppointmentViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 10/09/2024.
//

import UIKit

class ManageAppointmentViewController: UIViewController {
    //MARK:  Outlets
    @IBOutlet weak var bookingStatusCollectionView: UICollectionView!
    @IBOutlet weak var myBookingsCollectionView: UICollectionView!
    
    var status = [BookingStatus]()
    var booking = [Bookings]()
    
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
private extension ManageAppointmentViewController {
    func setupView() {
        setUpNavigation()
        bookingStatusCollectionView.registerXib(cell: BookingStatusCollectionViewCell.self)
        myBookingsCollectionView.registerXib(cell: MyBookingsCollectionViewCell.self)
    }
    
    func localized() {
        
    }
    
    func setupData() {
        booking.append(Bookings(drName: "", image: "", specialty: "", location: "", date: ""))
        
        status.append(BookingStatus(status: "Upcoming"))
        status.append(BookingStatus(status: "Completed"))
        status.append(BookingStatus(status: "Canceled"))

    }
    
    func fetchData() {
    }
}

//MARK: - Set Up collection View
extension ManageAppointmentViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == bookingStatusCollectionView {
            return status.count
        } else {
            return booking.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == bookingStatusCollectionView {
            let cell: BookingStatusCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookingStatusCollectionViewCell", for: indexPath) as! BookingStatusCollectionViewCell
            let object = status[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
        } else {
            let cell: MyBookingsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyBookingsCollectionViewCell", for: indexPath) as! MyBookingsCollectionViewCell
            let object = booking[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
        }
    }
    
    
    
}

//MARK: - Set Up Navigations
extension ManageAppointmentViewController {
    func setUpNavigation() {
        let titleTextAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: "Inter18pt-SemiBold", size: 20) as Any,
            .foregroundColor: "374151".color_
        ]
        navigationController?.navigationBar.titleTextAttributes = titleTextAttributes
        self.isHidNavigation = false
    }
}
