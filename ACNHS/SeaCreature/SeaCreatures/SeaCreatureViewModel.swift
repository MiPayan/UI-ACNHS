//
//  SeaCreatureViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 07/06/2022.
//

import SwiftUI

final class SeaCreatureViewModel: ObservableObject {
    
    private let service: ACNHServiceProtocol
    private let mainDispatchQueue: DispatchQueueProtocol
    private let currentCalendar: CalendarProtocol
    @Published var seaCreatures = [SeaCreatureData]()
    @Published var state = StateEnum.loading
    
    init(
        service: ACNHServiceProtocol = ACNHService(),
        mainDispatchQueue: DispatchQueueProtocol = DispatchQueue.main,
        currentCalendar: CalendarProtocol = CurrentCalendar()
    ) {
        self.service = service
        self.mainDispatchQueue = mainDispatchQueue
        self.currentCalendar = currentCalendar
    }
    
    func getSeaCreatureData() {
        state = .loading
        service.getSeaCreatureData { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let seaCreature):
                self.mainDispatchQueue.async {
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
