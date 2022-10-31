//
//  FossilViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 31/05/2022.
//

import Foundation

import SwiftUI

final class FossilViewModel: ObservableObject {
    
    private let service: ACNHServiceProtocol
    @Published var fossils = [FossilData]()
    @Published var state = StateEnum.loading

    init(service: ACNHServiceProtocol = ACNHService()) {
        self.service = service
    }
    
    func getFossilData() {
        service.getFossilData { result in
            switch result {
            case .success(let fossil):
                DispatchQueue.main.async {
                    self.fossils = fossil
                }
            case .failure:
                self.state = .error
            }
        }
    }
}
