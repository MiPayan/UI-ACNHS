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
    @Published var state = State.loading
    @AppStorage("OnBoarding") var isOnBoarding = true
    
    enum State {
        case success
        case loading
        case error
    }
    
    init(service: ACNHServiceProtocol = ACNHService()) {
        self.service = service
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
        let (hour, month) = makeCurrentCalendar()
        let filtered = fishes.filter { $0.availability.monthArrayNorthern.contains(month) && $0.availability.timeArray.contains(hour) }
        return filtered
    }
    
    func makeFishesFromTheSouthernHemisphere() -> [FishData] {
        let (hour, month) = makeCurrentCalendar()
        let filtered = fishes.filter { $0.availability.monthArraySouthern.contains(month) && $0.availability.timeArray.contains(hour) }
        print(filtered.first!)
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
