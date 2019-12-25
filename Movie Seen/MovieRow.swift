//
//  MovieRow.swift
//  Movie Seen
//
//  Created by Christopher Evan Frazier on 12/23/19.
//  Copyright © 2019 Christopher Evan Frazier. All rights reserved.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            movie.image
            .resizable()
            .frame(width: 50, height: 50)
            Text(movie.title)
            Spacer()
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MovieRow(movie: movieData[0])
            MovieRow(movie: movieData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
