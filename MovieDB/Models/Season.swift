//
//  Saison.swift
//  MovieDB
//
//  Created by Sebastien Besse on 31/12/2024.
//

import Foundation
struct Season: Identifiable{
    let id : Int
    let name: String
    let date: String
    let description: String
    let image : URL?
}
