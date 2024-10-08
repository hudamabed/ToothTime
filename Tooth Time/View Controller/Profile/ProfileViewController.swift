//
//  ProfileViewController.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 07/10/2024.
//

import UIKit

class ProfileViewController: UIViewController {
    //MARK:  Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    var object = [GlobalConstants.ProfileSettings]()
    
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
private extension ProfileViewController {
    func setupView() {
        tableView.registerXib(cell: ProfileSettingsTableViewCell.self)
    }
    
    func localized() {
        
    }
    
    func setupData() {
        object.append(.editProfile)
        object.append(.favorite)
        object.append(.notifications)
        object.append(.settings)
        object.append(.helpAndSupport)
        object.append(.termsAndConditions)
        object.append(.logOut)
    }
    
    func fetchData() {
        
    }
}

//MARK: - Set Up Table View
extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return object.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ProfileSettingsTableViewCell = tableView.dequeueReusableCell(withIdentifier: ProfileSettingsTableViewCell.id, for: indexPath) as! ProfileSettingsTableViewCell
        
        let obj = self.object[indexPath.row]
        cell.object = obj
        cell.configureCell()
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == tableView.numberOfRows(inSection: indexPath.section) - 1 {
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
        } else {
            cell.separatorInset = .zero
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let obj = self.object[indexPath.row]
        self.navigationController?.popViewController(animated: false)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.dismiss(animated: true) {
                switch obj {
                case .editProfile:
                    break
                case .favorite:
                    let vc = FavoriteViewController.instantiat()
                    vc.push()
                    break
                case .notifications:
                    break
                case .settings:
                    break
                case .helpAndSupport:
                    break
                case .termsAndConditions:
                    break
                case .logOut:
                    let vc = LogoutViewController.instantiat()
                        vc.modalPresentationStyle = .fullScreen
                        vc.presenVC()
                        break
                    
                }
            }
        }
    }
    
}


