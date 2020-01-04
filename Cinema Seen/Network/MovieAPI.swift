//
//  MovieAPI.swift
//  Cinema Seen
//
//  Created by Christopher Evan Frazier on 12/25/19.
//  Copyright © 2019 Christopher Evan Frazier. All rights reserved.
//

import Foundation
import Moya

enum MovieAPI {
    case reco(id: Int)
    case topRated(page: Int)
    case newMovies(page: Int)
    case video(id: Int)
}

extension MovieAPI: TargetType {
    var sampleData: Data {
        return Data()
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
    

    var baseURL: URL {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/") else { fatalError("baseURL could not be configured") }
        return url
    }

    var path: String {
        switch self {
        case .reco(let id):
            return "\(id)/recommendations"
        case .topRated:
            return "popular"
        case .newMovies:
            return "now_playing"
        case .video(let id):
            return "\(id)/videos"
        }
    }

    var method: Moya.Method {
        switch self {
        case .reco, .topRated, .newMovies, .video:
            return .get
        }
    }

    var parameters: [String : Any] {
        switch self {
        case .reco, .video:
            return ["api_key": API.apiKey]
        case .topRated(let page), .newMovies(let page):
            return ["page": page, "api_key": API.apiKey]
        }
    }

    var parameterEncoding: ParameterEncoding {
        switch self {
        case .reco, .topRated, .newMovies, .video:
            return URLEncoding.queryString
        }
    }

    var task: Task {
        switch self {
        case .reco, .topRated, .newMovies, .video:
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        }
    }
}
