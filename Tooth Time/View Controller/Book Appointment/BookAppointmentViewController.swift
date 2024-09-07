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
    
    
    var time = [Time]()
    
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
//    @objc func navigateToSelectTime() {
//        let vc = 
//    }
    @IBAction func btnBack(_ sender: Any) {
        let vc = DoctorDetailsViewController.instantiat()
        vc.push()
    }
}

//MARK: - Configurations
private extension BookAppointmentViewController {
    func setupView() {
        setUpNavigation()
        TimeCollectionView.register(
            UINib(nibName: "TimeCollectionViewCell", bundle: nil)
            ,forCellWithReuseIdentifier: "TimeCollectionViewCell")
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
        let object = time[indexPath.row]
        cell.object = object
        cell.configureCell()
        return cell
        
    }
}

//MARK: - Set Up Navigations
extension BookAppointmentViewController {
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
//extension BookAppointmentViewController {
//    func customButtonConfirm() {
//        btnConfirm.btn.addTarget(self, action: #selector(navigateToSelectTime), for: .touchUpInside)
//    }
//}
