//
//  FavoritesData.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 19/10/2024.
//

import Foundation

class FavoritesData {
    static let shared = FavoritesData()
    var topDentists = [TopDentists]()
    var medicalCenters = [MedicalCenters]()
    
    private init() {}
    
}
