//
//  SeaCreatureViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 07/06/2022.
//

import SwiftUI

final class SeaCreatureViewModel: ObservableObject {
    
    private let service: ACNHServiceProtocol
    private let date = Date()
    private let calendar = Calendar.current
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
    
    func getTheSeaCreatureFromTheNorthernEmisphere() -> [SeaCreatureData] {
        let hour = calendar.component(.hour, from: date)
        let month = calendar.component(.month, from: date)
        let filtered = seaCreatures.filter { $0.availability.monthArrayNorthern.contains(month) && $0.availability.timeArray.contains(hour) }
        return filtered
    }
    
    func getTheSeaCreatureFromTheSouthernEmisphere() -> [SeaCreatureData] {
        let hour = calendar.component(.hour, from: date)
        let month = calendar.component(.month, from: date)
        let filtered = seaCreatures.filter { $0.availability.monthArraySouthern.contains(month) && $0.availability.timeArray.contains(hour) }
        return filtered
    }
    
    func getIconUri(seaCreature: SeaCreatureData) -> String {
        seaCreature.iconURI
    }
    
    func getMuseumPhrase(seaCreature: SeaCreatureData) -> String {
        seaCreature.museumPhrase
    }
    
    func getFileName(seaCreature: SeaCreatureData) -> String {
        seaCreature.fileName.replacedCharacter("_", by: "").capitalized
    }
    
    
    func formatCatchPhrase(seaCreature: SeaCreatureData) -> String {
        "\" \(seaCreature.catchPhrase) \""
    }
    
    func getPrice(seaCreature: SeaCreatureData) -> String {
        String(seaCreature.price)
    }
    
    func getShadow(seaCreature: SeaCreatureData) -> String {
        seaCreature.shadow
    }
    
    func formatAvailabilityTime(seaCreature: SeaCreatureData) -> String {
        var time = ""
        guard seaCreature.availability.time != "" else {
            time = "Always"
            return time
        }
        guard seaCreature.availability.time == "" else {
            time = seaCreature.availability.time
            return time
        }
        return time
    }
    
    func getSpeed(seaCreature: SeaCreatureData) -> String {
        seaCreature.speed
    }
    
    func formatNorthernEmisphere(seaCreature: SeaCreatureData) -> String {
        var emisphereAvailability = ""
        guard seaCreature.availability.monthNorthern != "" else {
            emisphereAvailability = "Always"
            return emisphereAvailability
        }
        guard seaCreature.availability.monthNorthern == "" else {
            emisphereAvailability = seaCreature.availability.monthNorthern
            return emisphereAvailability
        }
        return emisphereAvailability
    }
    
    func formatSouthernEmisphere(seaCreature: SeaCreatureData) -> String {
        var emisphereAvailability = ""
        guard seaCreature.availability.monthSouthern != "" else {
            emisphereAvailability = "Always"
            return emisphereAvailability
        }
        guard seaCreature.availability.monthSouthern == "" else {
            emisphereAvailability = seaCreature.availability.monthSouthern
            return emisphereAvailability
        }
        return emisphereAvailability
    }
}
