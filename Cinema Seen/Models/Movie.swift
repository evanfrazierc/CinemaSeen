//
//  Movie.swift
//  Cinema Seen
//
//  Created by Christopher Evan Frazier on 12/23/19.
//  Copyright © 2019 Christopher Evan Frazier. All rights reserved.
//

import Foundation
import SwiftUI

struct APIResults: Decodable {
    let page: Int
    let numResults: Int
    let numPages: Int
    let movies: [Movie]
    
    private enum CodingKeys: String, CodingKey {
        case page, numResults = "total_results", numPages = "total_pages", movies  = "results"
    }
}

struct Movie: Decodable, Hashable, Identifiable {
    let id: Int
    let title: String
    let backdrop: String
    let overview: String
    var releaseDate: String
    var rating: Double
    let posterPath: String
    
    private enum CodingKeys: String, CodingKey {
        case id, title, backdrop = "backdrop_path", overview, releaseDate = "release_date", rating = "vote_average", posterPath = "poster_path"
    }
    
    static func getDefault() -> Movie {
        // TODO: fill this in
        
        return Movie(id: 99999, title: "Evan's Adventure", backdrop: "Evan's Backdrop", overview: "Evan goes on another crazy adventure!", releaseDate: "1991", rating: 5.0, posterPath: "")
    }
}
