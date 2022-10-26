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
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func makeSeaCreatureFromTheNorthernHemisphere() -> [SeaCreatureData] {
        let (hour, month) = makeCurrentCalendar()
        let filtered = seaCreatures.filter {
            $0.availability.monthArrayNorthern.contains(month) && $0.availability.timeArray.contains(hour)
        }
        return filtered
    }
    
    func makeSeaCreatureFromTheSouthernHemisphere() -> [SeaCreatureData] {
        let (hour, month) = makeCurrentCalendar()
        let filtered = seaCreatures.filter {
            $0.availability.monthArraySouthern.contains(month) && $0.availability.timeArray.contains(hour)
        }
        return filtered
    }
    
    private func makeCurrentCalendar() -> (Int, Int) {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let month = calendar.component(.month, from: date)
        return (hour, month)
    }
}
