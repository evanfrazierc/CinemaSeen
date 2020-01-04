//
//  MainHomeViewModel.swift
//  Cinema Seen
//
//  Created by Christopher Evan Frazier on 12/26/19.
//  Copyright © 2019 Christopher Evan Frazier. All rights reserved.
//

import SwiftUI
import Combine

class MainHomeViewModel: ObservableObject {
    @Published var movies: [Movie] = [] 
    
    func search(forQuery searchQuery: String) {
        API.getNewMovies(page: 1) {[weak self](movies) in
            self?.movies = movies
            
        }
//        var param = JsonDictionary()
//        param["q"] = searchQuery
//
//        let todayStr = Date().add(days: -2)?.toString(dateFormat: "yyyy-MM-dd") ?? ""
//        if !todayStr.isEmpty {
//            param["from"] = todayStr
//        }
//        param["sortBy"] = "publishedAt"
//        param["apiKey"] = AppConstants.apiKey
//
//        APICaller.shared.callGetAllNewsAPI(param: param) { [weak self](success, errorMsg, movie) in
//            if success {
//                self?.movies = movie
//            }
//            else {
//                self?.movies = []
//            }
//        }
    }
}
