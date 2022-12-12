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
    private let mainDispatchQueue: DispatchQueueProtocol
    @Published var fossils = [FossilData]()
    @Published var state = StateEnum.loading

    init(service: ACNHServiceProtocol = ACNHService(), mainDispatchQueue: DispatchQueueProtocol = DispatchQueue.main) {
        self.service = service
        self.mainDispatchQueue = mainDispatchQueue
    }
    
    func getFossilData() {
        state = .loading
        service.getFossilData { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let fossil):
                self.mainDispatchQueue.async {
                    self.fossils = fossil
                }
            case .failure:
                self.state = .error
            }
        }
    }
}
