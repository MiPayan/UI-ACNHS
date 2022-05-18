//
//  ACNHService.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import Foundation

protocol ACNHServiceProtocol {
    func getFishData(completion: @escaping ((Result<[FishData], NetworkingError>)) -> Void)
    func getSeaData(completion: @escaping ((Result<[SeaCreatureData], NetworkingError>)) -> Void)
    func getBugsData(completion: @escaping ((Result<[BugData], NetworkingError>)) -> Void)
    func getFossilData(completion: @escaping ((Result<[FossilData], NetworkingError>)) -> Void)
    func getVillagerData(completion: @escaping ((Result<[VillagerData], NetworkingError>)) -> Void)
}

final class ACNHService: ACNHServiceProtocol {
    
    private let networking: Networking
    private let endpoint = "https://acnhapi.com/v1a/"
    
    init(networking: Networking = .init()) {
        self.networking = networking
    }
    
    func getFishData(completion: @escaping ((Result<[FishData], NetworkingError>)) -> Void) {
        networking.getData(with: "\(endpoint)fish") { (result: Result<[FishData], NetworkingError>) in
            switch result {
            case .success(let success):
                completion(.success(success))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
    
    func getSeaData(completion: @escaping ((Result<[SeaCreatureData], NetworkingError>)) -> Void) {
        networking.getData(with: "\(endpoint)sea") { (result: Result<[SeaCreatureData], NetworkingError>) in
            switch result {
            case .success(let success):
                completion(.success(success))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
    
    func getBugsData(completion: @escaping ((Result<[BugData], NetworkingError>)) -> Void) {
        networking.getData(with: "\(endpoint)bugs") { (result: Result<[BugData], NetworkingError>) in
            switch result {
            case .success(let success):
                completion(.success(success))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
    
    func getFossilData(completion: @escaping ((Result<[FossilData], NetworkingError>)) -> Void) {
        networking.getData(with: "\(endpoint)fossils") { (result: Result<[FossilData], NetworkingError>) in
            switch result {
            case .success(let success):
                completion(.success(success))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
    
    func getVillagerData(completion: @escaping ((Result<[VillagerData], NetworkingError>)) -> Void) {
        networking.getData(with: "\(endpoint)villagers") { (result: Result<[VillagerData], NetworkingError>) in
            switch result {
            case .success(let success):
                completion(.success(success))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
