//
//  AdBoard.swift
//  Tooth Time
//
//  Created by Huda M. A'abed on 20/08/2024.
//

import Foundation

class AdBoard {
    var image: String?
    var header: String?
    var description: String?
    
    init(image: String? = nil, header: String? = nil, description: String? = nil) {
        self.image = image
        self.header = header
        self.description = description
    }   
}
