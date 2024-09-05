//
//  Review.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 05/09/2024.
//

import Foundation

class Review {
    var imgProfile: String?
    var name: String?
    var rating: Float?
    var star: String?
    var comment: String?
    
    init(imgProfile: String? = nil, name: String? = nil, rating: Float? = nil, star: String? = nil, comment: String? = nil) {
        self.imgProfile = imgProfile
        self.name = name
        self.rating = rating
        self.star = star
        self.comment = comment
    }
}
