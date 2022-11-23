//
//  FishViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 18/05/2022.
//

import SwiftUI

final class FishViewModel: ObservableObject {
    
    private let service: ACNHServiceProtocol
    @Published var fishes = [FishData]()
    @Published var state = StateEnum.loading
    private var currentCalendar: CalendarProtocol
    @AppStorage("OnBoarding") var isOnBoarding = true
    
    init(
        service: ACNHServiceProtocol = ACNHService(),
        currentCalendar: CalendarProtocol = CurrentCalendar()
    ) {
        self.service = service
        self.currentCalendar = currentCalendar
    }
    
    func getFishData() {
        state = .loading
        service.getFishData { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let fishes):
                    self.fishes = fishes
                    self.state = .success
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
