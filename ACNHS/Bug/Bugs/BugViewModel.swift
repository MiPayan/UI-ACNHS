//
//  BugViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 20/05/2022.
//

import SwiftUI

final class BugViewModel: ObservableObject {
    
    private let service: ACNHServiceProtocol
    @Published var bugs = [BugData]()
    @Published var state = StateEnum.loading
    private let currentCalendar = CurrentCalendar()
    
    init(service: ACNHServiceProtocol = ACNHService()) {
        self.service = service
    }
    
    func getBugData() {
        service.getBugsData { result in
            switch result {
            case .success(let bug):
                DispatchQueue.main.async {
                    self.bugs = bug
                }
            case .failure:
                self.state = .error
            }
        }
    }
    
    func makeBugFromTheNorthernHemisphere() -> [BugData] {
        let (hour, month) = currentCalendar.makeCurrentCalendar()
        let filtered = bugs.filter { $0.availability.monthArrayNorthern.contains(month) && $0.availability.timeArray.contains(hour) }
        return filtered
    }
    
    func makeBugFromTheSouthernHemisphere() -> [BugData] {
        let (hour, month) = currentCalendar.makeCurrentCalendar()
        let filtered = bugs.filter { $0.availability.monthArraySouthern.contains(month) && $0.availability.timeArray.contains(hour) }
        return filtered
    }
}
