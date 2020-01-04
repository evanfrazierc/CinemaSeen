//
//  MovieDetailView.swift
//  Cinema Seen
//
//  Created by Christopher Evan Frazier on 12/26/19.
//  Copyright © 2019 Christopher Evan Frazier. All rights reserved.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
        
    private let imageWidth: CGFloat = (UIScreen.main.bounds.size.width-30.0)
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.center) {
            Image("ic_movie_placeholder")
                .frame(width: imageWidth, height: imageWidth * 0.5, alignment: Alignment.center)
                .scaledToFit()
            
            Text(verbatim: movie.title)
                .lineLimit(nil)
                .font(.headline)
            
            HStack {
                Image(uiImage: #imageLiteral(resourceName: "ic_movie_placeholder"))
                    .frame(width: CGFloat(20.0), height: CGFloat(20.0), alignment: Alignment.center)
                Text(movie.releaseDate)
                    .font(.system(size: 12.0))
                
                Spacer()
                
                Image(uiImage: #imageLiteral(resourceName: "ic_movie_placeholder"))
                    .frame(width: CGFloat(20.0), height: CGFloat(20.0), alignment: Alignment.center)
                Text(String(movie.rating))
                    .font(.system(size: 12.0))
            }
            .padding(EdgeInsets(top: CGFloat(0.0), leading: CGFloat(16.0), bottom: CGFloat(0.0), trailing: CGFloat(16.0)))
            
            Text(movie.overview)
                .lineLimit(nil)
                .font(.subheadline)
                .padding(.top, CGFloat(16.0))
        }
        .padding(EdgeInsets(top: 0.0, leading: 16.0, bottom: 0.0, trailing: 16.0))
            .offset(x: 0, y: -180)
            .padding(.bottom, -180)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Movie.getDefault())
    }
}
