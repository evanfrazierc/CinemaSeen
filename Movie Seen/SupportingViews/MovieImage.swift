//
//  MovieImage.swift
//  Movie Seen
//
//  Created by Christopher Evan Frazier on 12/23/19.
//  Copyright © 2019 Christopher Evan Frazier. All rights reserved.
//

import SwiftUI

struct MovieImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .clipShape(Rectangle())
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .scaledToFit()
            
    }
}

struct MovieImage_Previews: PreviewProvider {
    static var previews: some View {
        MovieImage(image: Image("the_godfather"))
    }
}
