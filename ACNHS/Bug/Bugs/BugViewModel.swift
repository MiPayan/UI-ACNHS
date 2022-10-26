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
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func makeBugFromTheNorthernHemisphere() -> [BugData] {
        let (hour, month) = makeCurrentCalendar()
        let filtered = bugs.filter { $0.availability.monthArrayNorthern.contains(month) && $0.availability.timeArray.contains(hour) }
        return filtered
    }
    
    func makeBugFromTheSouthernHemisphere() -> [BugData] {
        let (hour, month) = makeCurrentCalendar()
        let filtered = bugs.filter { $0.availability.monthArraySouthern.contains(month) && $0.availability.timeArray.contains(hour) }
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
