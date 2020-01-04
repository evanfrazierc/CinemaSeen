//
//  MovieRowView.swift
//  Cinema Seen
//
//  Created by Christopher Evan Frazier on 12/27/19.
//  Copyright © 2019 Christopher Evan Frazier. All rights reserved.
//

import SwiftUI

struct MovieRowView: View {
    let movie: Movie
    
    var body: some View {
        
        HStack {
            Image("ic_movie_placeholder")
                .frame(width: 55.0, height: 41.0, alignment: Alignment.center)
                .scaledToFit()
                .clipped()
            VStack(alignment: .leading) {
                Text(movie.title)
                    .font(.headline)
                    Text(movie.overview)
                        .font(.subheadline)
                }
            }
    }
}

struct MovieRowView_Previews: PreviewProvider {
    static var previews: some View {
        MovieRowView(movie: Movie.getDefault())
    }
}
