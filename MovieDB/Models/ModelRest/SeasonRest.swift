//
//  SeasonRest.swift
//  MovieDB
//
//  Created by Sebastien Besse on 26/01/2025.
//

import Foundation

struct TVShowDetailResponse: Decodable{
    let id: Int
    let seasons: [SeasonRest]
}
struct SeasonRest: Decodable{
    let id: Int
    let name: String
    let date: String
    let overview: String
    let poster: String
    
    enum CodingKeys: String, CodingKey{
        case id
        case name
        case date = "air_date"
        case overview
        case poster = "poster_path"
    }
}
