//
//  FishViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 18/05/2022.
//

import SwiftUI

final class FishViewModel: ObservableObject {
    
    private let service: ACNHServiceProtocol
    private let mainDispatchQueue: DispatchQueueProtocol
    private let currentCalendar: CalendarProtocol
    @Published var fishes = [FishData]()
    @Published var state = StateEnum.loading
    @AppStorage("OnBoarding") var isOnBoarding = true
    
    init(
        service: ACNHServiceProtocol = ACNHService(),
        mainDispatchQueue: DispatchQueueProtocol = DispatchQueue.main,
        currentCalendar: CalendarProtocol = CurrentCalendar()
    ) {
        self.service = service
        self.mainDispatchQueue = mainDispatchQueue
        self.currentCalendar = currentCalendar
    }
    
    func getFishData() {
        state = .loading
        service.getFishData { [weak self] result in
            guard let self = self else { return }
            self.mainDispatchQueue.async {
                switch result {
                case .success(let fishes):
                    self.state = .success
                    self.fishes = fishes
                case .failure:
                    self.state = .error
                }
            }
        }
    }
    
    func makeFishesFromTheNorthernHemisphere() -> [FishData] {
        let (hour, month) = currentCalendar.makeCurrentCalendar()
        let filtered = fishes.filter { $0.availability.monthArrayNorthern.contains(month) && $0.availability.timeArray.contains(hour) }
        return filtered
    }
    
    func makeFishesFromTheSouthernHemisphere() -> [FishData] {
        let (hour, month) = currentCalendar.makeCurrentCalendar()
        let filtered = fishes.filter { $0.availability.monthArraySouthern.contains(month) && $0.availability.timeArray.contains(hour) }
        return filtered
    }
}
