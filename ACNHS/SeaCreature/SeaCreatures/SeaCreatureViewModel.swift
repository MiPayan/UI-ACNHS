//
//  SeaCreatureViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 07/06/2022.
//

import SwiftUI

final class SeaCreatureViewModel: ObservableObject {
    
    private let service: ACNHServiceProtocol
    @Published var seaCreatures = [SeaCreatureData]()
    @Published var state = StateEnum.loading
    private let currentCalendar = CurrentCalendar()
    
    init(service: ACNHServiceProtocol = ACNHService()) {
        self.service = service
    }
    
    func getSeaCreatureData() {
        service.getSeaCreatureData { result in
            switch result {
            case .success(let seaCreature):
                DispatchQueue.main.async {
                    self.seaCreatures = seaCreature
                }
            case .failure:
                self.state = .error
            }
        }
    }
    
    func makeSeaCreatureFromTheNorthernHemisphere() -> [SeaCreatureData] {
        let (hour, month) = currentCalendar.makeCurrentCalendar()
        let filtered = seaCreatures.filter {
            $0.availability.monthArrayNorthern.contains(month) && $0.availability.timeArray.contains(hour)
        }
        return filtered
    }
    
    func makeSeaCreatureFromTheSouthernHemisphere() -> [SeaCreatureData] {
        let (hour, month) = currentCalendar.makeCurrentCalendar()
        let filtered = seaCreatures.filter {
            $0.availability.monthArraySouthern.contains(month) && $0.availability.timeArray.contains(hour)
        }
        return filtered
    }
}
