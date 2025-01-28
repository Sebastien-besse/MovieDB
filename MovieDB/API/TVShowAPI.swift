//
//  TVShowAPI.swift
//  MovieDB
//
//  Created by Sebastien Besse on 08/01/2025.
//

import Foundation


// Les séries populaires
let tvSeriePopular = URL(string:"https://api.themoviedb.org/3/tv/popular?api_key=\(tokenAPI)")!
// Les séries les mieux notées
let tvSerieTopRated = URL(string: "https://api.themoviedb.org/3/tv/top_rated?api_key=\(tokenAPI)")!
// Les séries en cours
let tvSerieAiringToday =  URL(string: "https://api.themoviedb.org/3/tv/airing_today?api_key=\(tokenAPI)")!
// Détail d'une serie
let tvSerieDetailBaseURL = URL(string: "https://api.themoviedb.org/3/tv/")!
