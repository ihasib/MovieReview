//
//  AddMovieViewModel.swift
//  MovieReview
//
//  Created by Hasibur Rahman on 19/1/23.
//

import Foundation

class AddMovieViewModel {
    var title: String = ""
    var director: String = ""
    var rating: Int?
    var releaseDate: Date = Date()

    func save() {
        let manager = CoreDataManager.shared
        let movie = Movie(context: manager.persistentContainer.viewContext)

        movie.title = title
        movie.director = director
        movie.rating = Double(rating ?? 0)
        movie.releaseDate = releaseDate
        manager.save
    }
}
