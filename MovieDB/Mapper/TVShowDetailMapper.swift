//
//  TVShowDetailMapper.swift
//  MovieDB
//
//  Created by Sebastien Besse on 26/01/2025.
//

import Foundation
struct TVShowDetailMapper{
    func map(rest: SeasonRest) -> Season{
        
        let BaseURL = "https://image.tmdb.org/t/p/w500"
        let fullUrl = URL(string: BaseURL + rest.poster)
        
        return Season(
            id: rest.id,
            name: rest.name,
            date: rest.date,
            description: rest.overview,
            image: fullUrl)
    }
}
