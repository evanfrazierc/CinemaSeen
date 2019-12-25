//
//  Movie.swift
//  Movie Seen
//
//  Created by Christopher Evan Frazier on 12/23/19.
//  Copyright © 2019 Christopher Evan Frazier. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Movie: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var year: Int
    fileprivate var imageName: String
    var description: String
    var directors: String
    var rating: String
    var categories: String
    var stars: String
    //var hasBeenSeen: Bool
}

extension Movie {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

