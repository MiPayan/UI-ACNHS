//
//  ACNHService.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI
import Alamofire

final class ACNHService: ACNHServiceProtocol {
    
    private let session: NetworkingProtocol
    private let endpoint = "https://acnhapi.com/v1a/"
    
    init(session: NetworkingProtocol = Networking()) {
        self.session = session
    }
    
    func getFishData(completionHandler: @escaping ((Result<[FishData], NetworkingError>)) -> Void) {
        let urlString = "\(endpoint)fish/"
        guard let url = URL(string: urlString) else { return }
        session.getData(with: url) { (response: AFDataResponse<[FishData]>) in
            switch response.result {
            case .success(let success):
                completionHandler(.success(success))
            case .failure(_):
                completionHandler(.failure(.urlInvalid))
            }
        }
    }
    
    func getSeaCreatureData(completionHandler: @escaping ((Result<[SeaCreatureData], NetworkingError>)) -> Void) {
        let urlString = "\(endpoint)sea/"
        guard let url = URL(string: urlString) else { return }
        session.getData(with: url) { (response: AFDataResponse<[SeaCreatureData]>) in
            switch response.result {
            case .success(let success):
                completionHandler(.success(success))
            case .failure(_):
                completionHandler(.failure(.urlInvalid))
            }
        }
    }
    
    func getBugsData(completionHandler: @escaping ((Result<[BugData], NetworkingError>)) -> Void) {
        let urlString = "\(endpoint)bugs/"
        guard let url = URL(string: urlString) else { return }
        session.getData(with: url) { (response: AFDataResponse<[BugData]>) in
            switch response.result {
            case .success(let success):
                completionHandler(.success(success))
            case .failure(_):
                completionHandler(.failure(.urlInvalid))
            }
        }
    }
    
    func getFossilData(completionHandler: @escaping ((Result<[FossilData], NetworkingError>)) -> Void) {
        let urlString = "\(endpoint)fossils/"
        guard let url = URL(string: urlString) else { return }
        session.getData(with: url) { (response: AFDataResponse<[FossilData]>) in
            switch response.result {
            case .success(let success):
                completionHandler(.success(success))
            case .failure(_):
                completionHandler(.failure(.urlInvalid))
            }
        }
    }
}
