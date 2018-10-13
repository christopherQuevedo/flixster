//
//  Movie.swift
//  flixster
//
//  Created by Chris Q. on 10/10/18.
//  Copyright © 2018 Chris Q. All rights reserved.
//

import Foundation

class Movie {
    
    var title: String?
    var overview: String?
    var releaseDate: String?
    var posterUrl: URL?
    var backDropUrl: URL?
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        overview = dictionary["overview"] as? String ?? "No overview"
        releaseDate = dictionary["release_date"] as? String ?? "No release date"
        let backdropPathString = dictionary["backdrop_path"] as! String
        let posterPathString = dictionary["poster_path"] as! String
        let baseURLString = "https://image.tmdb.org/t/p/w500"
        posterUrl = URL(string: baseURLString + posterPathString)!
        backDropUrl = URL(string: baseURLString + backdropPathString)!
    }
    
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        return movies
    }
}
