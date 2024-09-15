//
//  ManageAppointmentViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 10/09/2024.
//

import UIKit

class ManageAppointmentViewController: UIViewController {
    //MARK:  Outlets
    @IBOutlet weak var myBookingsCollectionView: UICollectionView!
    
    @IBOutlet weak var lblUpcoming: UILabel!
    @IBOutlet weak var lblCompleted: UILabel!
    @IBOutlet weak var lblCanceled: UILabel!
    
    @IBOutlet weak var viewLine1: UIView!
    @IBOutlet weak var viewLine2: UIView!
    @IBOutlet weak var viewLine3: UIView!
    
    var booking = [Bookings]()
    var currentStatus: BookingStatus = .Upcoming
    
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
        updateUI(for: .Upcoming)
    }
    
    //MARK: - Actions
    @IBAction func btnUpcoming(_ sender: Any) {
        currentStatus = .Upcoming
        updateUI(for: currentStatus)
    }
    
    
    @IBAction func btnCompleted(_ sender: Any) {
        currentStatus = .Completed
        updateUI(for: currentStatus)
    }
    
    @IBAction func btnCanceled(_ sender: Any) {
        currentStatus = .Canceled
        updateUI(for: currentStatus)
    }
}

//MARK: - Configurations
private extension ManageAppointmentViewController {
    func setupView() {
        setUpNavigation()
        myBookingsCollectionView.registerXib(cell: MyBookingsCollectionViewCell.self)
    }
    
    func localized() {
        
    }
    
    func setupData() {
        booking.append(Bookings(drName: "Dr. James Robinson", image: "imgDr1", specialty: "Orthopedic Surgery", location: "Cardiology Center, USA", date: "May 22, 2023 - 10.00 AM"))
        booking.append(Bookings(drName: "Dr. Daniel Lee", image: "imgDr4", specialty: "Orthopedic Surgery", location: "Elite Ortho Clinic, USA", date: "June 21, 2023 - 10.00 AM"))
        
        booking.append(Bookings(drName: "Dr. James Robinson", image: "imgDr3", specialty: "Orthopedic Surgery", location: "Elite Ortho Clinic, USA", date: "May 22, 2023 - 10.00 AM"))
        
        booking.append(Bookings(drName: "Dr. Nathan Harris", image: "imgDr2", specialty: "Orthopedic Surgery", location: "Digestive Institute, USAA", date: "May 22, 2023 - 10.00 AM"))
        
        booking.append(Bookings(drName: "Dr. James Robinson", image: "imgDr5", specialty: "Orthopedic Surgery", location: "Elite Ortho Clinic, USA", date: "Jube 14, 2023 - 15.00pm"))
        

    }
    
    func fetchData() {
    }
}

//MARK: - Set Up collection View
extension ManageAppointmentViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return booking.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell: MyBookingsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyBookingsCollectionViewCell", for: indexPath) as! MyBookingsCollectionViewCell
            let object = booking[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
    }
}

//MARK: - Set Up Navigations
extension ManageAppointmentViewController {
    func setUpNavigation() {
//        self.navigationController?.navigationBar.topItem?.title = "My Bookings"
        let titleTextAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: "Inter18pt-SemiBold", size: 20) as Any,
            .foregroundColor: "374151".color_
        ]
        navigationController?.navigationBar.titleTextAttributes = titleTextAttributes
        self.isHidNavigation = false
    }
}

//MARK: - Set Up Booking Status
extension ManageAppointmentViewController {
    func updateUI(for status: BookingStatus) {
        switch status {
        case .Upcoming:
            lblUpcoming.textColor = "1C2A3A".color_
            lblCompleted.textColor = "9CA3AF".color_
            lblCanceled.textColor = "9CA3AF".color_
            viewLine1.isHidden = false
            viewLine2.isHidden = true
            viewLine3.isHidden = true
            viewLine1.roundCorners(isTopLeft: true, isTopRight: true, isBottomLeft: false, isBottomRight: false, radius: 3)
            
        case .Completed:
            lblUpcoming.textColor = "9CA3AF".color_
            lblCompleted.textColor = "1C2A3A".color_
            lblCanceled.textColor = "9CA3AF".color_
            viewLine1.isHidden = true
            viewLine2.isHidden = false
            viewLine3.isHidden = true
            viewLine2.roundCorners(isTopLeft: true, isTopRight: true, isBottomLeft: false, isBottomRight: false, radius: 3)
            
        case .Canceled:
            lblUpcoming.textColor = "9CA3AF".color_
            lblCompleted.textColor = "9CA3AF".color_
            lblCanceled.textColor = "1C2A3A".color_
            viewLine1.isHidden = true
            viewLine2.isHidden = true
            viewLine3.isHidden = false
            viewLine3.roundCorners(isTopLeft: true, isTopRight: true, isBottomLeft: false, isBottomRight: false, radius: 3)
        }
    }
    
}

