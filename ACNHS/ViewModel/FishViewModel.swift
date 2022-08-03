//
//  FishViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 18/05/2022.
//

import SwiftUI
import RealmSwift

final class FishViewModel: ObservableObject {
    
    private let service: ACNHServiceProtocol
    private let date = Date()
    private let calendar = Calendar.current
    @Published var fishes = [FishData]()
    
    init(
        service: ACNHServiceProtocol = ACNHService()
    ) {
        self.service = service
    }
    
    func getFishData() {
        service.getFishData { result in
            switch result {
            case .success(let fish):
                DispatchQueue.main.async {
                    self.fishes = fish
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func getPrice(fish: FishData) -> String {
        String(fish.price)
    }
    
    func getShadow(fish: FishData) -> String {
        fish.shadow
    }
    
    func getRarity(fish: FishData) -> String {
        return fish.availability.rarity
    }
    
    func getFileName(fish: FishData) -> String {
        fish.fileName.replacedCharacter("_", by: "").capitalized
    }
    
    func getIconUri(fish: FishData) -> String {
        fish.iconURI
    }
    
    func getMuseumPhrase(fish: FishData) -> String {
        fish.museumPhrase
    }
    
    func formatCatchPhrase(fish: FishData) -> String {
        "\" \(fish.catchPhrase) \""
    }
    
    func formatAvailabilityLocation(fish: FishData) -> String {
        fish.availability.location.replacedCharacter("when ", by: "")
    }
    
    func formatAvailabilityTime(fish: FishData) -> String {
        var time = ""
        guard fish.availability.time != "" else {
            time = "Always"
            return time
        }
        guard fish.availability.time == "" else {
            time = fish.availability.time
            return time
        }
        return time
    }
    
    func getTheFishFromTheNorthernEmisphere() -> [FishData] {
        let hour = calendar.component(.hour, from: date)
        let month = calendar.component(.month, from: date)
        let filtered = fishes.filter { $0.availability.monthArrayNorthern.contains(month) && $0.availability.timeArray.contains(hour) }
        return filtered
    }
    
    func getTheFishFromTheSouthernEmisphere() -> [FishData] {
        let hour = calendar.component(.hour, from: date)
        let month = calendar.component(.month, from: date)
        let filtered = fishes.filter { $0.availability.monthArraySouthern.contains(month) && $0.availability.timeArray.contains(hour) }
        return filtered
    }
    
    func formatNorthernEmisphere(fish: FishData) -> String {
        var emisphereAvailability = ""
        guard fish.availability.monthNorthern != "" else {
            emisphereAvailability = "Always"
            return emisphereAvailability
        }
        guard fish.availability.monthNorthern == "" else {
            emisphereAvailability = fish.availability.monthNorthern
            return emisphereAvailability
        }
        return emisphereAvailability
    }
    
    func formatSouthernEmisphere(fish: FishData) -> String {
        var emisphereAvailability = ""
        guard fish.availability.monthSouthern != "" else {
            emisphereAvailability = "Always"
            return emisphereAvailability
        }
        guard fish.availability.monthSouthern == "" else {
            emisphereAvailability = fish.availability.monthSouthern
            return emisphereAvailability
        }
        return emisphereAvailability
    }
}
