//
//  TVShowRest.swift
//  MovieDB
//
//  Created by Sebastien Besse on 08/01/2025.
//

import Foundation

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
    let poster: String
   
    
    enum CodingKeys:String, CodingKey{
        case id
        case name
        case overview
        case popularity
        case average = "vote_average"
        case poster = "poster_path"
    }
}

/*
 {
   "page": 1,
   "results": [
     {
       "adult": false,
       "backdrop_path": "/ukAmSyNdtWduHZfm27R2EOsguKt.jpg",
       "genre_ids": [
         10759,
         9648,
         18
       ],
       "id": 93405,
       "origin_country": [
         "KR"
       ],
       "original_language": "ko",
       "original_name": "오징어 게임",
       "overview": "Hundreds of cash-strapped players accept a strange invitation to compete in children's games. Inside, a tempting prize awaits — with deadly high stakes.",
       "popularity": 10921.06,
       "poster_path": "/dDlEmu3EZ0Pgg93K2SVNLCjCSvE.jpg",
       "first_air_date": "2021-09-17",
       "name": "Squid Game",
       "vote_average": 7.841,
       "vote_count": 14726
     },
 */
