//
//  TVShow.swift
//  MovieDB
//
//  Created by Sebastien Besse on 31/12/2024.
//

import Foundation

struct TVShow: Identifiable{
    let id : Int
    let title: String
    let image: URL?
    let voteAverage: Double
    let description: String
    let season: [Season]?
}
