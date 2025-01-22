//
//  TVShowRepo.swift
//  MovieDB
//
//  Created by Sebastien Besse on 08/01/2025.
//

import Foundation

class TVShowRepo{
    
    enum TVShowError: Error{
        case httpResponseError
        case decodeError
        case dataEmpty
        case urlSessionError
    }
    
    func getTVShow() async throws -> TVShowResponse{
  
        do{
            let (data, response) = try await URLSession.shared.data(from: tvSeriePopular)
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else{
                throw TVShowError.httpResponseError
            }
            guard !data.isEmpty else{
                throw TVShowError.dataEmpty
            }
            do{
                let tvShowRest = try JSONDecoder().decode(TVShowResponse.self, from: data)
                for result in tvShowRest.results {
                    print("\(result.name)")
                  
                }
                return tvShowRest
                
            }catch{
                print("\(error)")
                throw TVShowError.decodeError
            }
        }catch{
            print("\(error)")
            throw TVShowError.urlSessionError
             
        }
    }
}
