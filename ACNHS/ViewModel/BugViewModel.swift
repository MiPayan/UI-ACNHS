//
//  BugViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 20/05/2022.
//

import SwiftUI

final class BugViewModel: ObservableObject {
    
    private let service: ACNHServiceProtocol
    var failureHandler: (() -> Void) = {}
    @Published var bugs = [BugData]()

    init(service: ACNHServiceProtocol = ACNHService(networking: Networking())) {
        self.service = service
    }
    
    func getBugData() {
        service.getBugsData { result in
            switch result {
            case .success(let bug):
                DispatchQueue.main.async {
                    self.bugs = bug
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
