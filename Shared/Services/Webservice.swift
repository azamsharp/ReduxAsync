//
//  Webservice.swift
//  ReduxAsync
//
//  Created by Mohammad Azam on 9/21/20.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case decodingError
    case noData
}

class Webservice {
    
    func getAllMovies(url: String, completion: @escaping (Result<[Movie], NetworkError>) -> Void) {
        
        guard let moviesUrl = URL(string: url) else {
            completion(.failure(.badUrl))
            return
        }
        
        URLSession.shared.dataTask(with: moviesUrl) { data, _, error in
            
            guard let data = data, error == nil else {
                completion(.failure(.noData))
                return
            }
            
            guard let movieResponse = try? JSONDecoder().decode(MovieResponse.self, from: data)
                  else {
                completion(.failure(.decodingError))
                    return
            }
            
            completion(.success(movieResponse.movies))
            
        }.resume()
        
    }
    
}
