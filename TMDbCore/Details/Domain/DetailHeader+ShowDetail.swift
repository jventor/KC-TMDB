//
//  DetailHeader+MovieDetail.swift
//  TMDbCore
//
//  Created by Guille Gonzalez on 08/10/2017.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import Foundation

extension DetailHeader {
  init(show: ShowDetail) {
    title = show.title
    posterPath = show.posterPath
    backdropPath = show.backdropPath
    
    let year = (show.firstAirDate?.year).map { String($0) }
    let seasons = "\(show.seasons ?? 0) seasons."
    
    metadata = [year, seasons].compactMap { $0 }.joined(separator: " - ")
  }
}

