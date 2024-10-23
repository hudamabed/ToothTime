//
//  LocationViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 14/09/2024.
//

import UIKit
import MapKit
import LocationPickerViewController

class LocationViewController: UIViewController {
    //MARK:  Outlets
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var customTextFiled: CustomTextFiled!
    @IBOutlet weak var MedicalCentersCollectionView: UICollectionView!
    
    
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
    @objc private func mapSearch() {
        let locationPicker = LocationPicker()
        locationPicker.pickCompletion = { (pickedLocationItem) in
            if let lat = pickedLocationItem.coordinate?.latitude, let ing = pickedLocationItem.coordinate?.longitude {
                let coordinate = CLLocationCoordinate2D.init(latitude: lat, longitude: ing)
                let marker = MKPointAnnotation()
                marker.title = "picked location"
                marker.coordinate = coordinate
                self.mapView.addAnnotation(marker)
                self.mapView.showAnnotations (self.mapView.annotations, animated: true)
            }
        }
        locationPicker.addBarButtons()
        // Call this method to add a done and a cancel button to navigation bar and set navigation bar background.
        let navigationController = UINavigationController(rootViewController: locationPicker)
        navigationController.navigationBar.isTranslucent = true
        navigationController.navigationBar.tintColor = .white
        navigationController.navigationBar.barTintColor = .white
        navigationController.view.backgroundColor = .black
        navigationController.viewControllers.first?.view.backgroundColor = .black
        navigationController.presenVC()
    }
}
//MARK: - Configurations
private extension LocationViewController {
    func setupView() {
        setUpCustomTextFiled()
        MedicalCentersCollectionView.registerXib(cell: MedicalCentersCollectionViewCell.self)
    }
    
    func localized() {
        
    }
    
    func setupData() {
        medicalCenters.append(MedicalCenters.init(image: "hospital1", centerName: "Smile & Shine Clinic", location: "123 Oak Street, CA 98765", rating: 5.0, distance: "2.5 km/40 min", review: 58, type: "Hospital"))
        
        medicalCenters.append(MedicalCenters.init(image: "hospital2", centerName: "Golden Dentistry Center", location: "555 Bridge Street, Golden Gate", rating: 4.9, distance: "2.5 km/40 min", review: 508, type: "Clinic"))
        
    }
    
    func fetchData() {
    }
}
//MARK: - Set Up Custom TextFiled
extension LocationViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return medicalCenters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MedicalCentersCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MedicalCentersCollectionViewCell", for: indexPath) as! MedicalCentersCollectionViewCell
        let object = medicalCenters[indexPath.row]
        cell.object = object
        cell.configureCell()
        return cell
        
    }
}

//MARK: - Set Up Custom TextFiled
extension LocationViewController {
    private func setUpCustomTextFiled() {
        customTextFiled.txtFiled.addTarget(self, action: #selector(mapSearch), for: .editingDidBegin)
    }
}

