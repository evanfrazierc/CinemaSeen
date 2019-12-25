//
//  MovieDetail.swift
//  Movie Seen
//
//  Created by Christopher Evan Frazier on 12/23/19.
//  Copyright © 2019 Christopher Evan Frazier. All rights reserved.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    var body: some View {
        VStack {
            MovieImage(image: movie.image)
            VStack(alignment: .leading) {
                Text(movie.title + "(" + String(movie.year) + ")")
                    .font(.title)
                HStack {
                    Text("Directed By: " + movie.directors)
                    .font(.subheadline)
                    Spacer()
                    Text("Rated: " + movie.rating)
                        .font(.subheadline)
                }
                Text("Stars: " + movie.stars)
                    .font(.subheadline)
                    .padding(.vertical)
                Text(movie.description)
                    .font(.body)
            }
            .padding(.all)
            Spacer()
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/)
        .navigationBarTitle(Text(movie.title), displayMode: .inline)
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: movieData[0])
    }
}
