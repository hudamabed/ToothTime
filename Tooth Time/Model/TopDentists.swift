//
//  Top Dentists.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 20/08/2024.
//

import Foundation

class TopDentists {
    var drName: String?
    var image: String?
    var heart: String?
    var specialty: String?
    var location: String?
    var star: String?
    var rating: Float?
    var review: Float?
    
    init(drName: String? = nil, image: String? = nil, heart: String? = nil, specialty: String? = nil, location: String? = nil, star: String? = nil, rating: Float? = nil, review: Float? = nil) {
        self.drName = drName
        self.image = image
        self.heart = heart
        self.specialty = specialty
        self.location = location
        self.star = star
        self.rating = rating
        self.review = review
    }
    
    var formattedReview: String {
        return "\(String(describing: review)) Reviews"
    }
}
