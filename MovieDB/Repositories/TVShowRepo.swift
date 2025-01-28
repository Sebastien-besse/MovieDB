//
//  TVShowRepo.swift
//  MovieDB
//
//  Created by Sebastien Besse on 08/01/2025.
//

import Foundation

class TVShowRepo{
    
    let fetchAPI = FetchAPI()
    
    func getTVShowPopular()async throws -> TVShowResponse{
        return try await fetchAPI.get(url: tvSeriePopular, as: TVShowResponse.self)
    }
    
    func getTVShowTopRated()async throws -> TVShowResponse{
        return try await fetchAPI.get(url: tvSerieTopRated, as: TVShowResponse.self)
    }
    
    func getTVShowAiringToday()async throws -> TVShowResponse{
        return try await fetchAPI.get(url: tvSerieAiringToday, as: TVShowResponse.self)
    }
    
    func getTVShowDetail(serieID: Int)async throws -> TVShowDetailResponse{
        let fullURL = URL(string: "\(tvSerieDetailBaseURL)\(serieID)?api_key=\(tokenAPI)")!
        return try await fetchAPI.get(url: fullURL, as: TVShowDetailResponse.self)
    }
}
