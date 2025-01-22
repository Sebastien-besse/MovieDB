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

 
/*
 struct TVShowResponse: Decodable{
     let page: Int
     let results: [TVShowRest]
 }

 struct TVShowRest: Decodable, Identifiable{
     
     let id: Int
     let name: String
     let overview: String
     let popularity: Double
     let average: Double
     let voteCount: Int
     let poster: String?
    
     
     enum CodingKeys:String, CodingKey{
         case id
         case name
         case overview
         case popularity
         case average = "vote_average"
         case voteCount = "vote_count"
         case poster = "poster_path"
     }
 }
 */
