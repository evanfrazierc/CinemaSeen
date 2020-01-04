//
//  MovieImageView.swift
//  Cinema Seen
//
//  Created by Christopher Evan Frazier on 12/26/19.
//  Copyright © 2019 Christopher Evan Frazier. All rights reserved.
//

import SwiftUI

struct MovieImageView: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 1))
            .shadow(radius: 10)
    }
}

struct MovieImage_Previews: PreviewProvider {
    static var previews: some View {
        MovieImageView(image: Image(systemName: "photo"))
    }
}
