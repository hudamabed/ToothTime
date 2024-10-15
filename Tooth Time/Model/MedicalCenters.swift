//
//  MedicalCenters.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 20/08/2024.
//

import Foundation

class MedicalCenters {
    var id: Int?
    var image: String?
    var centerName: String?
    var location: String?
    var rating: Float?
    var distance: String?
    var review: Int?
    var type: String?

    init(id: Int? = nil, image: String? = nil, centerName: String? = nil, location: String? = nil, rating: Float? = nil, distance: String? = nil, review: Int? = nil, type: String? = nil) {
        self.id = id
        self.image = image
        self.centerName = centerName
        self.location = location
        self.rating = rating
        self.distance = distance
        self.review = review
        self.type = type
    }
    
    var formattedReview: String {
        return "(\(review ?? 0 ) reviews)"
    }
}
