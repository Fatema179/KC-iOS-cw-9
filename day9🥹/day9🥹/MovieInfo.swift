//
//  MovieInfo.swift
//  day9🥹
//
//  Created by Zeinab H Eldeeb on 26/08/2022.
//

import SwiftUI

struct MovieInfo: View {
    var ourMovie: MovieModel
    var body: some View {
        ZStack {
            Color.black.opacity(0.8)
                .ignoresSafeArea()
            Image(ourMovie.MovieName)
                .opacity(0.5)
                .blur(radius: 20)
                .ignoresSafeArea()
            VStack{
                Image(ourMovie.MovieName)
                    .resizable()
                    .scaledToFit()                .clipShape(Circle())
                    .frame(width: 250, height: 250)
                
                Text(ourMovie.MovieName)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(ourMovie.MovieAct, id:\.self){ act in
                            VStack{
                                Text(act)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.title)
                                Image(act)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200, height: 200)
                            }
                        }
                    }
                }.frame(width: 400, height: 300)
            }
        }
    }
}

struct MovieInfo_Previews: PreviewProvider {
    static var previews: some View {
        MovieInfo(ourMovie: MovieModel(MovieName: "Aladdin", MovieAct: ["mena", "naomi", "will"]))
    }
}
