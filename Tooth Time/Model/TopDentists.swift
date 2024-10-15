//
//  Top Dentists.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 20/08/2024.
//

import Foundation

class TopDentists {
    var id: Int?
    var drName: String?
    var image: String?
    var heart: String?
    var specialty: String?
    var location: String?
    var star: String?
    var rating: Float?
    var review: Int?

    init(id: Int? = nil, drName: String? = nil, image: String? = nil, heart: String? = nil, specialty: String? = nil, location: String? = nil, star: String? = nil, rating: Float? = nil, review: Int? = nil) {
        self.id = id
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
        return "\(review ?? 0) Reviews"
    }
    
//    var formattedRating: String {
//        if let rating = rating {
//            if rating == floor(rating) {
//                return "\(Int(rating))"
//            } else {
//                return "\(rating)"
//            }
//        } else {
//            return ""
//        }
//    }
}
