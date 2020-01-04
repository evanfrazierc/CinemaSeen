//
//  MainHomeView.swift
//  Cinema Seen
//
//  Created by Christopher Evan Frazier on 12/26/19.
//  Copyright © 2019 Christopher Evan Frazier. All rights reserved.
//

import SwiftUI

struct MainHomeView: View {
    @State private var searchQuery: String = "Titanic"
    @EnvironmentObject var viewModel: MainHomeViewModel
    
    var todayStr: String {
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd"
        return df.string(from: Date())
    }
    
    var body: some View {
        NavigationView {
            List {
                SearchBarView(text: $searchQuery, title: "Search", onCommit: search)
                ForEach(viewModel.movies, id: \.self) { movie in
                    NavigationLink(destination: MovieDetailView(movie: movie)) {
                        MovieRowView(movie: movie)
                    }
                }
            }.navigationBarTitle(Text(todayStr))
        }.onAppear(perform: search)
    }
    
    private func search() {
        viewModel.search(forQuery: searchQuery)
    }
}

struct MainHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeView()
    }
}
