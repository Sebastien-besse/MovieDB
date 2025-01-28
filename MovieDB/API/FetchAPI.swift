//
//  FetchAPI.swift
//  MovieDB
//
//  Created by Sebastien Besse on 28/01/2025.
//

import Foundation

class FetchAPI{
    
    enum TVShowError: Error{
        case httpResponseError
        case decodeError
        case dataEmpty
        case urlSessionError
    }
    
    
    func get<T:Decodable>(url: URL, as type: T.Type)async throws -> T{
        do{
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else{
                throw TVShowError.httpResponseError
            }
            guard !data.isEmpty else{
                throw TVShowError.dataEmpty
            }
            do{
                let decodeObjectRest = try JSONDecoder().decode(T.self, from: data)
                return decodeObjectRest
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
