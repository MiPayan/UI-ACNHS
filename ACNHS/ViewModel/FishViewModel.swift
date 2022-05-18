//
//  FishViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 18/05/2022.
//

import SwiftUI

final class FishViewModel: ObservableObject {
    
    private var service = ACNHService(networking: Networking())
    @State var fishes = [FishData]()
    
    var fishName: [String] {
        return fishes.map({ $0.fileName })
    }
    
    func getFish() {
        service.getFishData { result in
            switch result {
            case .success(let fish):
                self.fishes = fish
            case .failure(let error):
                print(error)
            }
        }
    }
}
