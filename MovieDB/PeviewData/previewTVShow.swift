//
//  Untitled.swift
//  MovieDB
//
//  Created by Sebastien Besse on 05/01/2025.
//

import Foundation

extension Season{
    static let viking = [
        Season(title: "Saison 1", Description: "Description de la série 1"),
        Season(title: "Saison 2", Description: "Description de la série 2"),
        Season(title: "Saison 3", Description: "Description de la série 3")
    ]
    static let peakyBlinders = [
        Season(title: "Saison 1", Description: "Description de la série 1"),
        Season(title: "Saison 2", Description: "Description de la série 2"),
        Season(title: "Saison 3", Description: "Description de la série 3")
    ]
    static let strangerThings = [
        Season(title: "Saison 1", Description: "Description de la série 1"),
        Season(title: "Saison 2", Description: "Description de la série 2"),
        Season(title: "Saison 3", Description: "Description de la série 3"),
        Season(title: "Saison 4", Description: "Description de la série 4"),
        Season(title: "Saison 5", Description: "Description de la série 5"),
    ]
}

extension TVShow{
    
    static let previewTVShow = TVShow(title: "Viking", image: nil, not: [78, 100, 65, 90], description: "Série ce passant à l'époque des vikings racontant le récit du célébre Ragnar Lodbrok", season: Season.viking)
    
    static let previewsTVShow = [
        TVShow(title: "Viking", image: nil, not: [78, 100, 65, 90], description: "Série ce passant à l'époque des vikings racontant le récit du célébre Ragnar Lodbrok", season: Season.viking),
        TVShow(title: "Peaky Blinders", image: nil, not: [78, 100, 65, 90], description: "Série ce passant à l'époque de l'industrialisation racontant le récit d'un des gangs les plus connu d'Angleterre à cet époque", season: Season.peakyBlinders),
        TVShow(title: "Stranger things", image: nil, not: [78, 100, 65, 90], description: "Série ce passant à l'époque des vikings racontant le récit du célébre Ragnar Lodbrok", season: Season.strangerThings)
    ]
}
