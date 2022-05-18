//
//  Networking.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import Foundation

final class Networking {
    
    func getData<T: Decodable>(with urlString: String, completion: @escaping((Result<[T], NetworkingError>)) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(.failure(.decodingFailure))
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error as? NetworkingError {
                completion(.failure(error))
            }
            
            guard let data = data else {
                completion(.failure(.noData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedData = try decoder.decode([T].self, from: data)
                completion(.success(decodedData))
            } catch {
                completion(.failure(.decodingFailure))
            }
        }.resume()
    }
}
