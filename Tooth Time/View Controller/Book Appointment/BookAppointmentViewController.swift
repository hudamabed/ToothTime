//
//  BookAppointmentViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 15/08/2024.
//

import UIKit

class BookAppointmentViewController: UIViewController {
    //MARK:  Outlets
    @IBOutlet weak var btnConfirm: CustomButton!
    @IBOutlet weak var TimeCollectionView: UICollectionView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var time = [Time]()
    var selectedIndexPath: IndexPath?

    
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
    @objc func navigateToConfirmation() {
        let vc = ConfirmationViewController.instantiat()
        vc.modalPresentationStyle = .overFullScreen
        vc.presenVC()
    }
    
    @IBAction func btnBack(_ sender: Any) {
        let vc = DoctorDetailsViewController.instantiat()
        vc.pop()
    }
}

//MARK: - Configurations
private extension BookAppointmentViewController {
    func setupView() {
        setUpNavigation()
        setUpCustomAlert()
        customButtonConfirm()
        //customButtonDone()
        TimeCollectionView.registerXib(cell: TimeCollectionViewCell.self)
    }
    
    func localized() {

    }
    
    func setupData() {
        time.append(Time(time: "09.00 AM"))
        time.append(Time(time: "09.30 AM"))
        time.append(Time(time: "10.00 AM"))
        time.append(Time(time: "10.30 AM"))
        time.append(Time(time: "11.00 AM"))
        time.append(Time(time: "11.30 AM"))
        time.append(Time(time: "3.00 PM"))
        time.append(Time(time: "3.30 PM"))
        time.append(Time(time: "4.00 PM"))
        time.append(Time(time: "4.30 PM"))
        time.append(Time(time: "5.00 PM"))
        time.append(Time(time: "5.30 PM"))
    }
    
    func fetchData() {
    }
}

//MARK: - Set Up Collection View
extension BookAppointmentViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return time.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: TimeCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TimeCollectionViewCell", for: indexPath) as! TimeCollectionViewCell
        if selectedIndexPath == indexPath {
            cell.viewBackground.backgroundColor = "1C2A3A".color_
            cell.lblTime.textColor = "FFFFFF".color_
        } else {
            cell.viewBackground.backgroundColor = "F9FAFB".color_
            cell.lblTime.textColor = "6B7280".color_
        }
        let object = time[indexPath.row]
        cell.object = object
        cell.configureCell()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedIndexPath = indexPath
        collectionView.reloadData()
    }
}

//MARK: - Set Up Navigations
extension BookAppointmentViewController {
    func setUpNavigation() {
        //self.title = "Book Appointment"
        
//        let titleTextAttributes: [NSAttributedString.Key: Any] = [
//            .font: UIFont(name: "Inter18pt-SemiBold", size: 20) as Any,
//               .foregroundColor: "374151".color_
//           ]
//           navigationController?.navigationBar.titleTextAttributes = titleTextAttributes
//        self.isHidNavigation = true
    }
}
//MARK: - Set Up Custom Button
extension BookAppointmentViewController {
    func customButtonConfirm() {
        btnConfirm.btn.addTarget(self, action: #selector(navigateToConfirmation), for: .touchUpInside)
    }
}

//MARK: - Set Up Picker Date
extension BookAppointmentViewController {
    func setUpCustomAlert() {
       
    }
}
