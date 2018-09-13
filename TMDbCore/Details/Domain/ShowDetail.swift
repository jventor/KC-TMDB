//
//  MovieDetail.swift
//  TMDbCore
//
//  Created by Guille Gonzalez on 08/10/2017.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//


import Foundation

struct ShowDetail: Decodable {
  let backdropPath: String?
  let identifier: Int64
  let title: String
  let posterPath: String?
  let overview: String?
  let firstAirDate: Date?
  let seasons: Int?
  let genreIdentifiers: [Int]
  
  
  private enum CodingKeys: String, CodingKey {
    case identifier = "id"
    case title = "name"
    case seasons = "number_of_seasons"
    case overview
    case posterPath = "poster_path"
    case backdropPath = "backdrop_path"
    case firstAirDate = "first_air_date"
    case genreIdentifiers = "genre_ids"
  }
}
