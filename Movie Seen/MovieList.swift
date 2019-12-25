//
//  MovieList.swift
//  Movie Seen
//
//  Created by Christopher Evan Frazier on 12/23/19.
//  Copyright © 2019 Christopher Evan Frazier. All rights reserved.
//

import SwiftUI

struct MovieList: View {
    var body: some View {
        NavigationView {
            List(movieData) { movie in
                NavigationLink(destination: MovieDetail(movie: movie)) {
                    MovieRow(movie: movie)
                }
            }
        }
        .navigationBarTitle(Text("Movies"))
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone 11 Pro Max"], id: \.self) { deviceName in
            MovieList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
