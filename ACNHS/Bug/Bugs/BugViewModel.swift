//
//  BugViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 20/05/2022.
//

import SwiftUI

final class BugViewModel: ObservableObject {
    
    private let service: ACNHServiceProtocol
    private let mainDispatchQueue: DispatchQueueProtocol
    private let currentCalendar: CalendarProtocol
    @Published var bugs = [BugData]()
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
    
    func getBugData() {
        state = .loading
        service.getBugsData { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let bug):
                self.mainDispatchQueue.async {
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
