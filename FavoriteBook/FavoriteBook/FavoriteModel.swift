//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by GUREL on 2.06.2023.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable {
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
}

//BANDS

let rammstein = FavoriteElements(name: "Rammstein", imageName: "rammstein", description: "No.1 Music Band")
let megadeth = FavoriteElements(name: "Megadeth", imageName: "megadeth", description: "No.2 Music Band")
let ironmaiden = FavoriteElements(name: "Iron Maiden", imageName: "ironmaiden", description: "No.3 Music Band")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [rammstein,megadeth,ironmaiden])

//MOVIES

let nbk = FavoriteElements(name: "Natural Born Killers", imageName: "nbk", description: "No.1 Movie")
let thedarknight = FavoriteElements(name: "The Dark Knight", imageName: "thedarkknight", description: "No.2 Movie")
let johnwick = FavoriteElements(name: "John Wick", imageName: "johnwick", description: "No.3 Movie")

let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [nbk,thedarknight,johnwick])



let myFavorites = [favoriteBands,favoriteMovies]
