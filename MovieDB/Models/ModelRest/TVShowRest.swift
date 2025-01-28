//
//  TVShowRest.swift
//  MovieDB
//
//  Created by Sebastien Besse on 08/01/2025.
//

import Foundation

struct TVShowResponse: Decodable{
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
