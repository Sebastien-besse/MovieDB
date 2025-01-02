//
//  TVShow.swift
//  MovieDB
//
//  Created by Sebastien Besse on 31/12/2024.
//

import Foundation
struct TVShow: Identifiable{
    let id = UUID()
    let title: String
    let image: URL?
    let not: Int
    let description: String
    let season: [Season]?
}
