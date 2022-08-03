//
//  BugViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 20/05/2022.
//

import SwiftUI

final class BugViewModel: ObservableObject {
    
    private let service: ACNHServiceProtocol
    private let date = Date()
    private let calendar = Calendar.current
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
    
    func getTheBugFromTheNorthernEmisphere() -> [BugData] {
        let hour = calendar.component(.hour, from: date)
        let month = calendar.component(.month, from: date)
        let filtered = bugs.filter { $0.availability.monthArrayNorthern.contains(month) && $0.availability.timeArray.contains(hour) }
        return filtered
    }
    
    func getTheBugFromTheSouthernEmisphere() -> [BugData] {
        let hour = calendar.component(.hour, from: date)
        let month = calendar.component(.month, from: date)
        let filtered = bugs.filter { $0.availability.monthArraySouthern.contains(month) && $0.availability.timeArray.contains(hour) }
        return filtered
    }
    
    func getIconUri(bug: BugData) -> String {
        bug.iconURI
    }
    
    func getMuseumPhrase(bug: BugData) -> String {
        bug.museumPhrase
    }
    
    func getFileName(bug: BugData) -> String {
        bug.fileName.replacedCharacter("_", by: "").capitalized
    }
    
    func formatCatchPhrase(bug: BugData) -> String {
        "\" \(bug.catchPhrase) \""
    }
    
    func getPrice(bug: BugData) -> String {
        String(bug.price)
    }
    
    func getAvailabilityLocation(bug: BugData) -> String {
        bug.availability.location
    }
    
    func formatAvailabilityTime(bug: BugData) -> String {
        var time = ""
        guard bug.availability.time != "" else {
            time = "Always"
            return time
        }
        guard bug.availability.time == "" else {
            time = bug.availability.time
            return time
        }
        return time
    }
    
    func getRarity(bug: BugData) -> String {
        return bug.availability.rarity
    }
    
    func formatNorthernEmisphere(bug: BugData) -> String {
        var emisphereAvailability = ""
        guard bug.availability.monthNorthern != "" else {
            emisphereAvailability = "Always"
            return emisphereAvailability
        }
        guard bug.availability.monthNorthern == "" else {
            emisphereAvailability = bug.availability.monthNorthern
            return emisphereAvailability
        }
        return emisphereAvailability
    }
    
    func formatSouthernEmisphere(bug: BugData) -> String {
        var emisphereAvailability = ""
        guard bug.availability.monthSouthern != "" else {
            emisphereAvailability = "Always"
            return emisphereAvailability
        }
        guard bug.availability.monthSouthern == "" else {
            emisphereAvailability = bug.availability.monthSouthern
            return emisphereAvailability
        }
        return emisphereAvailability
    }
}
