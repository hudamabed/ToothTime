//
//  File.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 25/08/2024.
//

import Foundation
class GlobalConstants {
    
    //MARK: - Find Doctor View Controller
    enum Specialization {
        case all
        case general
        case orthodontics
        case surgery
    }
    
    //MARK: - Manage Appointment View Controller
    enum BookingStatus {
        case Upcoming
        case Completed
        case Canceled
    }
    
    //MARK: - Favorite View Controller
    enum Favorite {
        case doctor
        case hospital
    }
    
    
    //MARK: - ProfileSettingsView Controller
    enum ProfileSettings {
        case editProfile
        case favorite
        case notifications
        case settings
        case helpAndSupport
        case termsAndConditions
        case logOut

        
        var name: String {
            switch self {
            case .editProfile:
                return "Edit Profile"
            case .favorite:
                return "Favorite"
            case .notifications:
                return "notifications"
            case .settings:
                return "Settings"
            case .helpAndSupport:
                return "Help and Support"
            case .termsAndConditions:
                return "Terms and Conditions"
            case .logOut:
                return "Log Out"
            
            }
        }
        
        var image: String {
            switch self {
            case .editProfile:
                return "icUserEdit"
            case .favorite:
                return "icHeart"
            case .notifications:
                return "icNotification"
            case .settings:
                return "icSettings"
            case .helpAndSupport:
                return "icMessageQuestion"
            case .termsAndConditions:
                return "icSecuritySafe"
            case .logOut:
                return "icLogout"
            }
        }
    }
}
