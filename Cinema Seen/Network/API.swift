//
//  API.swift
//  Cinema Seen
//
//  Created by Christopher Evan Frazier on 12/25/19.
//  Copyright © 2019 Christopher Evan Frazier. All rights reserved.
//

import Foundation
import Moya

class API {
    
    static let apiKey = "89ffb57b72451811593f3c2f54c9db55"
    static let provider = MoyaProvider<MovieAPI> (
        plugins: [NetworkLoggerPlugin(verbose: true)])
    
    static func getNewMovies(page: Int, completion: @escaping ([Movie]) -> ()) {
        
        provider.request(.newMovies(page: page)) { result in
            
            switch result {
                
            case let .success(response):
                do {
                    let results = try JSONDecoder().decode(APIResults.self, from: response.data)
                    completion(results.movies)
                } catch let err {
                    print(err)
                }
            case let .failure(error):
                print(error)
                
            }
        }
    }
}
