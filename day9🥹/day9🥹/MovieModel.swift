//
//  MovieModel.swift
//  day9🥹
//
//  Created by Zeinab H Eldeeb on 26/08/2022.
//

import Foundation

struct MovieModel: Identifiable{
    let id = UUID()
    var MovieName: String
    var MovieAct: [String]
}

var myMovies = [MovieModel(MovieName: "Aladdin", MovieAct: ["mena", "naomi", "will"]), MovieModel(MovieName: "Home Alone", MovieAct: ["Macaulay", "joe", "daniel"]), MovieModel(MovieName: "MHA: World Heroes Mission", MovieAct: ["justin", "clifford", "David"]), MovieModel(MovieName: "The Mask", MovieAct: ["jim", "Cameron", "peter"]), MovieModel(MovieName: "مش أنا", MovieAct: ["tamer", "hala", "bayomy"]),]
