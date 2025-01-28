//
//  TVShowMapper.swift
//  MovieDB
//
//  Created by Sebastien Besse on 09/01/2025.
//

import Foundation

 struct TVShowMapper{
     func map(rest: TVShowRest)->TVShow{
         let BaseURL = "https://image.tmdb.org/t/p/w500"
         let fullUrl = URL(string: BaseURL + rest.poster)
         
         return TVShow(
            id: rest.id,
            title: rest.name,
            image: fullUrl,
            voteAverage: rest.average,
            description: rest.overview,
            season: nil)
     }
 }
