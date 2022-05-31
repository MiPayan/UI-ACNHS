//
//  FishViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 18/05/2022.
//

import SwiftUI

final class FishViewModel: ObservableObject {
    
    private let service: ACNHServiceProtocol
    var failureHandler: (() -> Void) = {}
    @Published var fishes = [FishData]()

    init(service: ACNHServiceProtocol = ACNHService(networking: Networking())) {
        self.service = service
    }
    
    func getFishData() {
        service.getFishData { result in
            switch result {
            case .success(let fish):
                DispatchQueue.main.async {
                    self.fishes = fish
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
