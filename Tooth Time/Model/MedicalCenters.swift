//
//  MedicalCenters.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 20/08/2024.
//

import Foundation

class MedicalCenters {
    var image: String?
    var centerName: String?
    var location: String?
    var rating: Float?
    var distance: String?
    var type: String?

    init(image: String? = nil, centerName: String? = nil, location: String? = nil, rating: Float? = nil, distance: String? = nil, type: String? = nil) {
        self.image = image
        self.centerName = centerName
        self.location = location
        self.rating = rating
        self.distance = distance
        self.type = type
    }
    
}
