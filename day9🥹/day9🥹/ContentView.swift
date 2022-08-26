//
//  ContentView.swift
//  day9🥹
//
//  Created by Zeinab H Eldeeb on 25/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(myMovies){ movie in
                    NavigationLink(destination: {
                        MovieInfo(ourMovie: movie)
                    }, label: {
                        RowView(movie:movie.MovieName)
                    }) 
                }
            }.navigationTitle("Movies🎬🍿")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
