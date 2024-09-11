//
//  Bookings.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 11/09/2024.
//

import Foundation

class Bookings {
    var drName: String?
    var image: String?
    var specialty: String?
    var location: String?
    var date: String?
    
    init(drName: String? = nil, image: String? = nil, specialty: String? = nil, location: String? = nil, date: String? = nil) {
        self.drName = drName
        self.image = image
        self.specialty = specialty
        self.location = location
        self.date = date
    }
}
